import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_music_method_channel.dart';

abstract class PluginMusicPlatform extends PlatformInterface {
  /// Constructs a PluginMusicPlatform.
  PluginMusicPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginMusicPlatform _instance = MethodChannelPluginMusic();

  /// The default instance of [PluginMusicPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginMusic].
  static PluginMusicPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginMusicPlatform] when
  /// they register themselves.
  static set instance(PluginMusicPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
