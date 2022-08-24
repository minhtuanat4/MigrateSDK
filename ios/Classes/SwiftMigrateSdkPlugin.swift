import Flutter
import UIKit

public class SwiftMigrateSdkPlugin: NSObject, FlutterPlugin {
    let linkVtcPay = "linkVtcPay"
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "migrate_sdk", binaryMessenger: registrar.messenger())
    let instance = SwiftMigrateSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      switch call.method {
      case "getPlatformVersion":
        result("iOS " + UIDevice.current.systemVersion)
      case "getdefaultGreeting":
        result("IOS Welcome to " + linkVtcPay)
      default:
        result("Error nhe!")
      }
  }
}
