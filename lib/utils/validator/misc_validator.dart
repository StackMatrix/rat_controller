import '../meteor/meteor.dart';

class Validator {
  // 懒汉式的单例模式，在类第一次使用的时候，再去实例化这个类，也就是延迟加载
  Validator._privateConstructor();
  static Validator get instance => _getInstance();
  static Validator? _instance;

  static Validator _getInstance() {
    _instance ??= Validator._privateConstructor();
    return _instance!;
  }

  late final Meteor _meteor = Meteor.instance;

  /// 电话验证: 检查值是否符合电话号码规则，若符合则为 true，否则为 false
  bool isPhone({required String value, required String msg, required bool tips,}) {
    if (RegExp(r"1[3-9]\d{9}$").hasMatch(value)) return true;

    if (tips) _meteor.popPrompt(msg);
    return false;
  }

  /// 账号验证：检查值是否符合本程序设定的值规则，若符合则为 true，否则为 false
  bool isAccount({required String value, required String msg, required bool tips,}) {
    if (RegExp(r"2022\d{6}$").hasMatch(value)) return true;

    if (tips) _meteor.popPrompt(msg);
    return false;
  }

  /// 布尔验证：检查布尔值的结果，真则为 true，否则为 false，（这不是愚蠢，只是为了 pop msg，看起来更形式化）
  bool isBool({required bool value, required String msg, required bool tips,}) {
    if (!value) return true;

    if (tips) _meteor.popPrompt(msg);
    return false;
  }

  /// 空值验证：检查字符串是否为空，若不为空则为 true，否则 true
  bool isEmpty({required String value, required String msg, required bool tips,}) {
    if (value.isNotEmpty) return true;

    if (tips) _meteor.popPrompt(msg);
    return false;
  }

  // 数字验证
  bool isNumber(String value, String msg, bool tips) {
    if (RegExp(r'^-?[0-9]+').hasMatch(value)) return true;

    if (tips) _meteor.popPrompt(msg);
    return false;
  }

  /// 值范围验证：检查值是否在指定的范围内，在范围内则为 true，否则为 false
  bool isRange({required int start, required int end, required String value, required bool tips, required String msg,}) {
    // ignore: prefer_interpolation_to_compose_strings
    String regex = r".{" + start.toString() + "," + end.toString() + r"}$";

    if (RegExp(regex).hasMatch(value)) return true;

    if (tips == true) _meteor.popPrompt(msg);
    return false;
  }

  /// 相等且非空验证：检查值是否符合规定，若符合则为 true，否则为 false
  bool isEqualNotEmpty({required String conditionOne, required String conditionTwo, required String msg, required bool tips}) {
    if (conditionOne.isNotEmpty && conditionOne == conditionTwo) return true;

    if (tips) _meteor.popPrompt(msg);
    return false;
  }

  /// 或验证：验证两个值，是否有一个为真，若有一个为真则为 true，否则为 false
  bool isOr({required value0, required value1, required bool tips, required String msg,}) {
    if (value0 || value1) return true;

    if (tips) _meteor.popPrompt(msg);
    return false;
  }
}