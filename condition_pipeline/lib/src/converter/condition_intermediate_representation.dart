import 'package:condition_pipeline/src/condition/condition.dart';

abstract class ConditionIR {}

class StartGroupIR extends ConditionIR {}

class JoinIR extends ConditionIR {
  final GruleRule rule; // AND / OR
  JoinIR({GruleRule? rule}) : rule = rule ?? .and;
}

class EndGroupIR extends ConditionIR {}

class FieldIR extends ConditionIR {
  final IFieldCondition condition;
  FieldIR({required this.condition});
}

mixin ConditionIntermediateRepresentation {
  List<ConditionIR> flatten(SearchCondition root) {
    final result = <ConditionIR>[];

    void visit(SearchCondition node) {
      if (node case IParentCondition parent) {
        if (result.isNotEmpty) {
          result.add(
            JoinIR(
              rule: node.parent is IParentCondition
                  ? (node.parent as IParentCondition).siblingsRule
                  : .and,
            ),
          );
        }
        result.add(StartGroupIR());
        parent.children.asMap().forEach((index, child) {
          if (index > 0) {
            result.add(JoinIR(rule: parent.siblingsRule));
          }
          visit(child);
        });
        result.add(EndGroupIR());
      } else if (node case IFieldCondition field) {
        result.add(FieldIR(condition: field));
      }
    }

    visit(root);
    return result;
  }
}
