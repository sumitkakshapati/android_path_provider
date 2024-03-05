import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_path_provider_method_channel.dart';

abstract class AndroidPathProviderPlatform extends PlatformInterface {
  /// Constructs a AndroidPathProviderPlatform.
  AndroidPathProviderPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidPathProviderPlatform _instance = MethodChannelAndroidPathProvider();

  /// The default instance of [AndroidPathProviderPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidPathProvider].
  static AndroidPathProviderPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidPathProviderPlatform] when
  /// they register themselves.
  static set instance(AndroidPathProviderPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
