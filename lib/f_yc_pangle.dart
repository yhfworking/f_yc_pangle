library f_yc_pangle;

import 'dart:developer';
import 'package:f_yc_config/f_yc_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pangle_ads/flutter_pangle_ads.dart';
export 'package:flutter_pangle_ads/flutter_pangle_ads.dart';

class FYcPangle {
  ///初始化
  static initializer() async {
    FYcConfigPangleConfig pangleConfig = FYcConfigConfigurator.instance
        .getConfig(configId: KIT_CONFIG_ID)
        .pangleConfig;
    bool isInit = await FlutterPangleAds.initAd(pangleConfig.appId);
    if (kDebugMode) {
      log(isInit ? '穿山甲初始化成功！' : '穿山甲初始化失败！');
    }
  }

  static Future<void> showSplashAd() async {
    FYcConfigAllConfig allConfig =
        FYcConfigConfigurator.instance.getConfig(configId: KIT_CONFIG_ID);
    FYcConfigCommonConfig commonConfig = allConfig.commonConfig;
    FYcConfigPangleConfig pangleConfig = allConfig.pangleConfig;
    if (kDebugMode || commonConfig.isInR()) {
      return;
    }
    if (pangleConfig.splashAdId != '') {
      return;
    }
    await FlutterPangleAds.showSplashAd(pangleConfig.splashAdId);
  }

  static Future<bool> showFullScreenVideoAd() async {
    FYcConfigAllConfig allConfig =
        FYcConfigConfigurator.instance.getConfig(configId: KIT_CONFIG_ID);
    FYcConfigCommonConfig commonConfig = allConfig.commonConfig;
    FYcConfigPangleConfig pangleConfig = allConfig.pangleConfig;
    if (commonConfig.isInR()) {
      return false;
    }
    if (!pangleConfig.isInterstitialAdEnableShow()) {
      return false;
    }
    if (pangleConfig.interstitialAdId != '') {
      return false;
    }
    return await FlutterPangleAds.showFullScreenVideoAd(
        pangleConfig.interstitialAdId);
  }

  static Future<bool> showRewardVideoAd(
      {String? customData = '', String? userId = ''}) async {
    FYcConfigAllConfig allConfig =
        FYcConfigConfigurator.instance.getConfig(configId: KIT_CONFIG_ID);
    FYcConfigCommonConfig commonConfig = allConfig.commonConfig;
    FYcConfigPangleConfig pangleConfig = allConfig.pangleConfig;
    if (commonConfig.isInR()) {
      return false;
    }
    if (customData == 'timerRewardRe') {
      if (!pangleConfig.isRewardAdEnableShow()) {
        return false;
      }
    }
    if (pangleConfig.rewardAdId != '') {
      return false;
    }
    return await FlutterPangleAds.showRewardVideoAd(pangleConfig.rewardAdId,
        customData: customData, userId: userId);
  }
}
