class UtDirection {
  final int bit;
  const UtDirection(this.bit);

  static const none = UtDirection(0x0);
  static const all = UtDirection(0xF);
  static const left = UtDirection(0x8);
  static const right = UtDirection(0x2);
  static const top = UtDirection(0x1);
  static const bottom = UtDirection(0x4);

  bool isTop() => (bit & 0x1) == 0x1;
  bool isRight() => (bit & 0x2) == 0x2;
  bool isBottom() => (bit & 0x4) == 0x4;
  bool isLeft() => (bit & 0x8) == 0x8;

  UtDirection operator &(UtDirection dir) => UtDirection(bit & dir.bit);
  UtDirection operator ^(UtDirection dir) => UtDirection(bit ^ dir.bit);
  bool contains(UtDirection dir) => (bit & dir.bit) != 0;
}
