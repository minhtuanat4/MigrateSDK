import Flutter
import UIKit
import VTCPaySDKWap

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
         case "isToday":
          VTCPaySDKWapManager.shared().getAssociationResponse()
          result(nil)
      default:
        result("Error nhe!")
      }
  }
    
    // private func isToday(_ call: FlutterMethodCall,_ result: @escaping FlutterResult) {
    //     let arguments = call.arguments as! Dictionary<String, Any>
    //     let dateTime = arguments["dateTime"] as! String;
    //     // Convert to local
    //     let localDate = dateTime.toDate(nil, region: Region.current)
    //     // Check isToday
    //     let checkToday = localDate?.isToday
    //     result(checkToday)
    // }
}

 
