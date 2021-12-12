//
//  AppDelegate.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let homeNavigationController = UINavigationController(rootViewController: HomeRouter().controller)
            window? = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = homeNavigationController
            window?.makeKeyAndVisible()
        print("appdelegate runned")
        return true
    }



}

