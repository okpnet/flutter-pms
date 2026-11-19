import 'package:app_shell/app_shell.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../i18n/strings_provider.dart';

/// 会社情報の概要の画面(画面案 `tools/open-design` の「会社情報」)。
///
/// 会社の情報・サマリ(従業員数・事業所数・部署数・役職数)・事業所のタイル・部署の構成・提供サービス・製品・役職を、
/// 1 つの画面に並べ、事業所・部署・承認パターン・職員は、ここから開く(戻るボタンで戻る)。
/// 項目は DB の列(会社・事業所・部署などの実体の項目)だけを使う。事業所の在籍人数は、割当から数える(編集不要の集計)。
/// 画面案にあって取得できないもの(従業員の区分の内訳・外部委託業者数・顧客数・代表者の役職)は、出さない
/// (`issue/20261118_0002.md` の 5-2)。
///
/// パターン: Facade(複数の実体の取得元を、1 つの概要の画面にまとめる)
class CompanyHomePage extends ConsumerStatefulWidget {
  const CompanyHomePage({super.key, required this.scope});

  final EntityScope scope;

  @override
  ConsumerState<CompanyHomePage> createState() => _CompanyHomePageState();
}

class _CompanyHomePageState extends ConsumerState<CompanyHomePage> {
  late Future<_Data> _future = _load();

  Future<List<EntityRecord>> _all(String key) async {
    final repository = widget.scope.catalog.repository(key);
    if (repository == null) return const [];
    return repository.find(take: 100000);
  }

  /// 取得できない実体(権限・通信)は、空として扱う(在籍人数の集計だけが欠ける。概要の画面は出す)。
  Future<List<EntityRecord>> _allOrEmpty(String key) async {
    try {
      return await _all(key);
    } on Object {
      return const [];
    }
  }

  Future<_Data> _load() async {
    final companies = await _all('company');
    return _Data(
      company: companies.firstOrNull,
      sites: await _all('site'),
      departments: await _all('department'),
      positions: await _all('position'),
      provisions: await _all('provision'),
      staffCount: (await _all('staff')).length,
      siteHeadcounts: _headcounts(await _allOrEmpty('assignment')),
    );
  }

  /// 事業所ごとの在籍人数(割当の担当者の数。同じ担当者は 1 人)。事業所の台帳の列は無いため、割当から数える(編集不要の集計)。
  Map<String, int> _headcounts(List<EntityRecord> assignments) {
    final staffBySite = <String, Set<String>>{};
    for (final a in assignments) {
      final site = a.valueOf('site');
      final staff = a.valueOf('staff');
      if (site.isEmpty || staff.isEmpty) continue;
      staffBySite.putIfAbsent(site, () => {}).add(staff);
    }
    return {for (final e in staffBySite.entries) e.key: e.value.length};
  }

  /// ほかの画面を開く。戻ってきたら、概要を読み直す。
  Future<void> _open(PageDestination<Object?> destination) async {
    await ref.read(commandBusProvider).execute(destination);
    if (mounted) {
      setState(() {
        _future = _load();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scope = widget.scope;
    final t = ref.watch(organizationStringsProvider).home;
    return ScreenScaffold(
      title: scope.labels.entity('company'),
      overline: null,
      asOf: scope.asOfText,
      backLabel: scope.strings.back,
      body: FutureBuilder<_Data>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(scope.strings.loadFailed));
          }
          final data = snapshot.data;
          if (data == null) return const LoadingIndicator.centered();
          return _body(context, t, data);
        },
      ),
    );
  }

  String _field(EntityRecord? r, String key) => r?.valueOf(key) ?? '';

  /// 所在地(郵便番号・住所 1・住所 2・建物を、DB の列のまま並べる)。
  String _address(EntityRecord? r) {
    final zip = _field(r, 'zip_code');
    final rest = [
      _field(r, 'address1'),
      _field(r, 'address2'),
      _field(r, 'building'),
    ].where((x) => x.isNotEmpty).join(' ');
    return [if (zip.isNotEmpty) '〒$zip', if (rest.isNotEmpty) rest].join(' ');
  }

  Widget _body(BuildContext context, dynamic t, _Data d) {
    final scope = widget.scope;
    final theme = Theme.of(context);
    final company = d.company;
    String label(String k) => scope.labels.field('company', k);
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
      children: [
        // --- 会社の概要 ---
        _Card(
          key: const ValueKey('homeCompany'),
          title: t.overview as String,
          icon: Icons.apartment_outlined,
          action: company == null
              ? null
              : _EditButton(
                  key: const ValueKey('homeCompanyEdit'),
                  label: t.edit as String,
                  onPressed: () =>
                      _open(EntityEditDestination('company', id: company.id)),
                ),
          child: company == null
              ? Text(t.none as String)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Text(
                      _field(company, 'name'),
                      key: const ValueKey('homeCompanyName'),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // 読みやすい行の構成(折り返しで途中で切れない): 読みと略称 / 代表者 / ホームページ / 所在地 / 電話と FAX
                    _FactRow(
                      key: const ValueKey('homeRowNames'),
                      facts: [
                        _Fact(
                          label('pronunciation'),
                          _field(company, 'pronunciation'),
                        ),
                        _Fact(label('nickname'), _field(company, 'nickname')),
                      ],
                    ),
                    _FactRow(
                      key: const ValueKey('homeRowCeo'),
                      facts: [
                        _Fact(label('ceo'), _field(company, 'ceo'), wide: true),
                      ],
                    ),
                    _FactRow(
                      key: const ValueKey('homeRowWeb'),
                      facts: [
                        _Fact(
                          label('web_page'),
                          _field(company, 'web_page'),
                          link: true,
                          wide: true,
                        ),
                      ],
                    ),
                    _FactRow(
                      key: const ValueKey('homeRowAddress'),
                      facts: [
                        _Fact(
                          t.address as String,
                          _address(company),
                          wide: true,
                        ),
                      ],
                    ),
                    _FactRow(
                      key: const ValueKey('homeRowContact'),
                      facts: [
                        _Fact(label('phone'), _field(company, 'phone')),
                        _Fact(
                          label('fax_number'),
                          _field(company, 'fax_number'),
                        ),
                      ],
                    ),
                    if (_field(company, 'remarks').isNotEmpty)
                      _Fact(label('remarks'), _field(company, 'remarks')),
                  ],
                ),
        ),
        const SizedBox(height: 24),
        // --- サマリ ---
        Text(
          t.summary as String,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        LayoutBuilder(builder: (context, c) {
          // 広いときは 4 列、狭いときは 2 列(スマートフォンの幅)
          final cols = c.maxWidth >= 720 ? 4 : 2;
          final tileWidth = (c.maxWidth - 16 * (cols - 1)) / cols;
          return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _Tile(
              key: const ValueKey('homeStaffCount'),
              icon: Icons.people_outline,
              title: t.staff as String,
              value: '${d.staffCount}',
              unit: t.unitPerson as String,
              onTap: () => _open(const EntityListDestination('staff')),
            ),
            _Tile(
              key: const ValueKey('homeSiteCount'),
              icon: Icons.business_outlined,
              title: t.sites as String,
              value: '${d.sites.length}',
              unit: t.unitSite as String,
              onTap: () => _open(const EntityListDestination('site')),
            ),
            _Tile(
              key: const ValueKey('homeDepartmentCount'),
              icon: Icons.account_tree_outlined,
              title: t.departments as String,
              value: '${d.departments.length}',
              unit: t.unitDepartment as String,
              onTap: () => _open(const EntityListDestination('department')),
            ),
            _Tile(
              key: const ValueKey('homePositionCount'),
              icon: Icons.badge_outlined,
              title: t.positions as String,
              value: '${d.positions.length}',
              unit: t.unitPosition as String,
              onTap: () => _open(const EntityListDestination('position')),
            ),
          ].map((t) => SizedBox(width: tileWidth, child: t)).toList(),
          );
        }),
        const SizedBox(height: 24),
        // --- 事業所 ---
        _Section(
          title: t.sites as String,
          trailing: t.siteCount(count: d.sites.length) as String,
          action: _EditButton(
            key: const ValueKey('homeSitesEdit'),
            label: t.edit as String,
            onPressed: () => _open(const EntityListDestination('site')),
          ),
        ),
        const SizedBox(height: 12),
        if (d.sites.isEmpty)
          Text(t.none as String)
        else
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              for (final s in d.sites)
                _SiteTile(
                  key: ValueKey('homeSite:${s.id}'),
                  code: _field(s, 'code'),
                  name: _field(s, 'name'),
                  address: _address(s),
                  headcount:
                      '${d.siteHeadcounts[s.id] ?? 0}${t.unitPerson as String}',
                  detail: t.detail as String,
                  onTap: () => _open(EntityEditDestination('site', id: s.id)),
                ),
            ],
          ),
        const SizedBox(height: 24),
        // --- 部署の構成 ---
        _Section(
          title: t.departmentStructure as String,
          trailing: t.departmentCount(count: d.departments.length) as String,
          action: _EditButton(
            key: const ValueKey('homeDepartmentsEdit'),
            label: t.edit as String,
            onPressed: () => _open(const EntityListDestination('department')),
          ),
        ),
        const SizedBox(height: 12),
        _Card(
          key: const ValueKey('homeDepartments'),
          child: _departments(context, t, d),
        ),
        const SizedBox(height: 24),
        // --- 提供サービス・製品 ---
        _Section(
          title: t.offerings as String,
          trailing: '${d.provisions.length}${t.unitCase}',
          action: company == null
              ? null
              : _EditButton(
                  key: const ValueKey('homeOfferingsEdit'),
                  label: t.edit as String,
                  onPressed: () =>
                      _open(const EntityListDestination('provision')),
                ),
        ),
        const SizedBox(height: 12),
        _Card(
          key: const ValueKey('homeOfferings'),
          child: d.provisions.isEmpty
              ? Text(t.none as String)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 12,
                  children: [
                    for (final p in d.provisions)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 12,
                        children: [
                          _Chip(_field(p, 'kind')),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${_field(p, 'code')}  ${_field(p, 'name')}',
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  _field(p, 'detail'),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
        ),
        const SizedBox(height: 24),
        // --- 承認 ---
        _Section(
          title: t.approval as String,
          action: _EditButton(
            key: const ValueKey('homeApprovalEdit'),
            label: t.open as String,
            onPressed: () =>
                _open(const EntityListDestination('approvalpattern')),
          ),
        ),
      ],
    );
  }

  /// 部署の構成: 最上位の部署と、配下の件数。
  Widget _departments(BuildContext context, dynamic t, _Data d) {
    final theme = Theme.of(context);
    if (d.departments.isEmpty) return Text(t.none as String);
    final children = <String?, int>{};
    for (final r in d.departments) {
      children[r.parentId] = (children[r.parentId] ?? 0) + 1;
    }
    final tops = [
      for (final r in d.departments)
        if (r.parentId == null) r,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final r in tops)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '${_field(r, 'code')}  ${_field(r, 'name')}',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                if ((children[r.id] ?? 0) > 0)
                  _Chip(t.below(count: children[r.id]!) as String),
              ],
            ),
          ),
      ],
    );
  }
}

class _Data {
  const _Data({
    required this.company,
    required this.sites,
    required this.departments,
    required this.positions,
    required this.provisions,
    required this.staffCount,
    required this.siteHeadcounts,
  });

  final EntityRecord? company;
  final List<EntityRecord> sites;
  final List<EntityRecord> departments;
  final List<EntityRecord> positions;
  final List<EntityRecord> provisions;
  final int staffCount;
  final Map<String, int> siteHeadcounts;
}

/// 枠(カード)。見出しとアイコン・右の操作は、あるときだけ。
class _Card extends StatelessWidget {
  const _Card({
    super.key,
    this.title,
    this.icon,
    this.action,
    required this.child,
  });

  final String? title;
  final IconData? icon;
  final Widget? action;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            if (title != null)
              Row(
                spacing: 8,
                children: [
                  if (icon != null) Icon(icon, size: 20),
                  Expanded(
                    child: Text(
                      title!,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ?action,
                ],
              ),
            child,
          ],
        ),
      ),
    );
  }
}

/// 見出し(「事業所」「部署の構成」など)と、右の件数・操作。
class _Section extends StatelessWidget {
  const _Section({required this.title, this.trailing, this.action});

  final String title;
  final String? trailing;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 12,
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        ?action,
        const Spacer(),
        if (trailing != null)
          Text(
            trailing!,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
      ],
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => OutlinedButton.icon(
    icon: const Icon(Icons.edit_outlined, size: 18),
    label: Text(label),
    onPressed: onPressed,
  );
}

/// 項目名と値。空の値は「-」。
class _Fact extends StatelessWidget {
  const _Fact(this.label, this.value, {this.link = false, this.wide = false});

  final String label;
  final String value;
  final bool link;

  /// 1 行に 1 項目だけのとき、幅を制限しない(長い所在地などを折り返さない)。
  final bool wide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 200,
        maxWidth: wide ? double.infinity : 420,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          Text(
            value.isEmpty ? '-' : value,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: link && value.isNotEmpty
                  ? theme.colorScheme.primary
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

/// サマリのタイル(件数)。押すと、その一覧を開く。
class _Tile extends StatelessWidget {
  const _Tile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.unit,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String value;
  final String unit;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    Icon(icon, size: 20),
                    Text(
                      title,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  spacing: 4,
                  children: [
                    Text(
                      value,
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(unit, style: theme.textTheme.bodyMedium),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 事業所のタイル。
class _SiteTile extends StatelessWidget {
  const _SiteTile({
    super.key,
    required this.code,
    required this.name,
    required this.address,
    required this.headcount,
    required this.detail,
    required this.onTap,
  });

  final String code;
  final String name;
  final String address;
  final String headcount;
  final String detail;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 340,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                _Chip(code),
                Text(
                  name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  address.isEmpty ? '-' : address,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                Row(
                  key: const ValueKey('siteHeadcount'),
                  children: [
                    Icon(
                      Icons.people_outline,
                      size: 16,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(headcount, style: theme.textTheme.bodySmall),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$detail ›',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 小さなチップ(コード・種別・配下の件数)。
class _Chip extends StatelessWidget {
  const _Chip(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (text.isEmpty) return const SizedBox.shrink();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

/// 項目を 1 行に並べる(幅が足りないときだけ、行の中で折り返す)。
class _FactRow extends StatelessWidget {
  const _FactRow({super.key, required this.facts});

  final List<_Fact> facts;

  @override
  Widget build(BuildContext context) =>
      Wrap(spacing: 40, runSpacing: 12, children: facts);
}
