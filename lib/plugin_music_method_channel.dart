import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_music_platform_interface.dart';

/// An implementation of [PluginMusicPlatform] that uses method channels.
class MethodChannelPluginMusic extends PluginMusicPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_music');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
