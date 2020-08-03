import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expression_language/expression_language.dart';


class Functions extends ChangeNotifier{

  String calc = '';
  String result = '0';

  void buttonPressed(String mark) {

    if(calc.length < 20){
      switch (mark) {
        case '+':printAnOperator('+');break;
        case '−':printAnOperator('-');break;
        case 'x':printAnOperator('*');break;
        case '/':printAnOperator('/');break;
        case '%':printAnOperator('%');break;
        case 'C':clearAll();break;
        case '<<':backSpace();break;
        case '=':parseExpression();break;
        default:printANumber(mark);
      }
    }else{
      switch (mark) {
        case 'C':clearAll();break;
        case '<<':backSpace();break;
        case '=':parseExpression();break;
      }
    }

  }

  void printAnOperator(String op){
    if(!calc.endsWith('+') && !calc.endsWith('-') &&
        !calc.endsWith('*') && !calc.endsWith('/') &&
        !calc.endsWith('%') && calc != ''){
      calc += op;
      notifyListeners();
    }
  }

  void clearAll(){
    calc = '';
    result = '0';
    notifyListeners();
  }

  void backSpace(){
    if(calc != ''){
      calc = calc.substring(0,calc.length - 1);
    }
    notifyListeners();
  }

  void printANumber(String mark) {
    calc += mark;
    notifyListeners();
  }

  void parseExpression(){
    try{
      var expressionGrammarDefinition = ExpressionGrammarParser({});
      var parser = expressionGrammarDefinition.build();
      var res = parser.parse(calc);
      var expression = res.value as Expression;
      var value = expression.evaluate();
      result = value.toString();
      print(result);
      notifyListeners();
    }catch(e){
     print(e);
    }
  }

}
