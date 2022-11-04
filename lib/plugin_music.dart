
import 'plugin_music_platform_interface.dart';

class PluginMusic {
  Future<String?> getPlatformVersion() {
    return PluginMusicPlatform.instance.getPlatformVersion();
  }
}
