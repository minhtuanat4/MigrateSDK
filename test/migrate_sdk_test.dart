import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:migrate_sdk/migrate_sdk.dart';

void main() {
  const MethodChannel channel = MethodChannel('migrate_sdk');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MigrateSdk.platformVersion, '42');
  });
}
