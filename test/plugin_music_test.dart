import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_music/plugin_music.dart';
import 'package:plugin_music/plugin_music_platform_interface.dart';
import 'package:plugin_music/plugin_music_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginMusicPlatform
    with MockPlatformInterfaceMixin
    implements PluginMusicPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginMusicPlatform initialPlatform = PluginMusicPlatform.instance;

  test('$MethodChannelPluginMusic is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginMusic>());
  });

  test('getPlatformVersion', () async {
    PluginMusic pluginMusicPlugin = PluginMusic();
    MockPluginMusicPlatform fakePlatform = MockPluginMusicPlatform();
    PluginMusicPlatform.instance = fakePlatform;

    expect(await pluginMusicPlugin.getPlatformVersion(), '42');
  });
}
