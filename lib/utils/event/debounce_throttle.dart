import 'dart:async';

//连续点击节流
class DebounceThrottle {
  DebounceThrottle._privateConstructor();
  static final DebounceThrottle _instance = DebounceThrottle._privateConstructor();
  static DebounceThrottle get instance => _instance;

  // 防抖函数
  static const deFaultDurationTime = 1000;
  static Timer? timer;
  Future debounce(Function doSomething, {durationTime = deFaultDurationTime}) async {
    timer?.cancel();
    timer = Timer(Duration(milliseconds: durationTime), () {
      doSomething.call();
      timer = null;
    });
  }

  // 普通节流
  static const String deFaultThrottleId = 'DeFaultThrottleId';
  static Map<String, int> startTimeMap = {deFaultThrottleId: 0};
  Future throttle(doSomething, {String throttleId = deFaultThrottleId, durationTime = deFaultDurationTime,  continueClick}) async {
    int currentTime = DateTime.now().millisecondsSinceEpoch;
    if (currentTime - (startTimeMap[throttleId] ?? 0) > durationTime) {
      doSomething;
      startTimeMap[throttleId] = DateTime.now().millisecondsSinceEpoch;
    } else {
      continueClick?.call();
    }
  }

  // 弹出节流
  static const String popPromptThrottleId = 'PopPromptThrottleId';
  late Map<String, int> startTimeMap2 = {popPromptThrottleId: 1};
  Future popThrottle(Function doSomething, {String throttleId = popPromptThrottleId, durationTime = deFaultDurationTime,  continueClick}) async {
    int currentTime = DateTime.now().millisecondsSinceEpoch;
    if (currentTime - (startTimeMap2[throttleId] ?? 1) > durationTime) {
      doSomething.call();
      startTimeMap2[throttleId] = DateTime.now().millisecondsSinceEpoch;
    } else {
      continueClick?.call();
    }
  }
}