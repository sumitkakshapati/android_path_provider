import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_path_provider_platform_interface.dart';

/// An implementation of [AndroidPathProviderPlatform] that uses method channels.
class MethodChannelAndroidPathProvider extends AndroidPathProviderPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_path_provider');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
