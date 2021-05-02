//
//  AppDelegate.swift
//  App
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import UIKit
import Home
import Login
import Core
import netfox

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // Start Netfox for debugging only
        #if DEBUG
            NFX.sharedInstance().start()
        #endif

        self.window = UIWindow(frame: UIScreen.main.bounds)

        self.logout()

        NotificationCenter.default.addObserver(self, selector: #selector(self.logout), name: Notification.Name("logout") , object: nil)
        
        return true
    }

    @objc func logout() {
        let token: String? = UserDefaultHelper.shared.get(key: .userToken)
        if token != nil {
            HomeRouterImpl.navigateToModule()
        } else {
            LoginRouterImpl.navigateToModule()
        }
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

