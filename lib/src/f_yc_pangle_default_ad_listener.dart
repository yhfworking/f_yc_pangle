// import 'package:f_yc_pangle/f_yc_pangle.dart';

// class FYcPangleDefaultAdListener {
//   static Future<void> handleListener(String appId) async {
//     await FlutterPangleAds.onEventListener((event) async {
//       String adEvent = 'adId:${event.adId} action:${event.action}';
//       if (event is AdRewardEvent) {
//         await YcConfig.setLastRewardAdShowTimestamp();
//         adEvent +=
//             ' rewardVerify:${event.rewardVerify} rewardAmount:${event.rewardAmount} rewardName:${event.rewardName} errCode:${event.errCode} errMsg:${event.errMsg} customData:${event.customData} userId:${event.userId}';
//         if (event.rewardVerify &&
//             event.customData != null &&
//             event.adId == YcConfig.pangleRewardAdId() &&
//             event.userId == YcConfig.userInfo().userId!) {
//           // if (event.customData == 'timerRewardRe') {
//           //   int amount = await YcApisDefault.receiveTimerRewardRe();
//           //   await StoragesDefault.to.setRewardAmount(amount);
//           // } else if (event.customData == 'sign') {
//           //   int amount = await ComponentsApisDefault.submitSign();
//           //   await StoragesDefault.to.setRewardAmount(amount);
//           // } else if (event.customData == 'continuitySign3') {
//           //   int amount = await ComponentsApisDefault.receiveContinuitySign(3);
//           //   await StoragesDefault.to.setRewardAmount(amount);
//           // } else if (event.customData == 'continuitySign7') {
//           //   int amount = await ComponentsApisDefault.receiveContinuitySign(7);
//           //   await StoragesDefault.to.setRewardAmount(amount);
//           // } else if (event.customData == 'continuitySign30') {
//           //   int amount = await ComponentsApisDefault.receiveContinuitySign(30);
//           //   await StoragesDefault.to.setRewardAmount(amount);
//           // } else if (event.customData == 'continuitySign365') {
//           //   int amount = await ComponentsApisDefault.receiveContinuitySign(365);
//           //   await StoragesDefault.to.setRewardAmount(amount);
//           // }
//           // await ComponentsApisDefault.reportRewaedAdEvent(
//           //     slotID: appId,
//           //     adnName: 'pangle',
//           //     adnSlotID: event.adId,
//           //     customData: event.customData.toString());
//         }
//       }
//       if (event.action == AdEventAction.onAdClosed) {
//         // int amount = StoragesDefault.to.rewardAmount();
//         // if (amount > 0) {
//         //   Get.dialog(WidgetsGoldReceive(amount: amount),
//         //       barrierDismissible: false);
//         //   await StoragesDefault.to.setRewardAmount(0);
//         // }
//       } else if (event.action == AdEventAction.onAdClicked) {
//         // await ComponentsApisDefault.reportAdClick(
//         // slotID: appId, adnName: 'pangle', adnSlotID: event.adId);
//       } else if (event.action == AdEventAction.onAdExposure) {
//         if (event.adId == YcConfig.pangleInterstitialAdId()) {
//           await YcConfig.setLastInterstitialAdShowTimestamp();
//         }
//       }
//       if (kDebugMode) {
//         LoggerUtils.write('---穿山甲广告事件:$adEvent');
//       }
//     });
//   }
// }
