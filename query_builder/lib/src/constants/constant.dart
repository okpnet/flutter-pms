const String SORT_ASC = 'ASC';
const String SORT_DESC = 'DESC';
const String ORDER_BY = 'ORDER BY';
const String WHERE = 'WHERE';
const String AND = 'AND';
const String OR = 'OR';

typedef ExpressionCallBack = dynamic Function(dynamic);
typedef ValueCallBack<T> = dynamic Function(T);
typedef SqlCallBack<T> = String Function(T);
typedef MapCallBack<T> = Map<String, dynamic> Function(T);
