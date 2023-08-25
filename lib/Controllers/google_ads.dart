import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsMobServices {
  static String? get RewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7767655536636388/4868005331';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7767655536636388/1064491698';
    }
    return null;
  }

  //un comment the functions at home in init state
  // un comment at manifest and infop too
  static String? get BannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7767655536636388/2842846919';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7767655536636388/2396673090';
    }
    return null;
  }

  // static String? get InterstitialAdId {
  //   if (Platform.isAndroid) {
  //     return 'ca-app-pub-3940256099942544/1033173712';
  //   } else if (Platform.isIOS) {
  //     return 'ca-app-pub-6720288058326515/4109979556';
  //   }
  //   return null;
  // }

  static final BannerAdListener bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('onAdLoaded'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('onAdFailedToLoad');
    },
    onAdClosed: (ad) => debugPrint('onAdClosed'),
    onAdOpened: (ad) => debugPrint('onAdOpened'),
  );


}
