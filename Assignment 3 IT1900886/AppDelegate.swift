//
//  App Delegate.swift
//  Assignment - 3 IT19000886
//
//  Created by Harish on 30/4/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Customized of Overall Point After App launch.
        return true
    }

    // MARK: Life Cycle of UISession

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // New session Created and Called.
        // Method to Create new scene configuration.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // When user cancel session this method called.
        // In the event that any meetings were disposed of while the application was not running, this will be called not long after application:didFinishLaunchingWithOptions.
        // Utilize this technique to deliver any assets that were well defined for the disposed of scenes, as they won't return.
    }


}

