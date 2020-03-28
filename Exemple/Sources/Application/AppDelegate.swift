//
//  AppDelegate.swift
//  Exemple
//
//  Created by Leonardo Oshima on 28/03/20.
//  Copyright © 2020 Leonardo Oshima. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = {
       UIWindow()
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupInitialView()
        return true
    }
    
    private func setupInitialView() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeView = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeView)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

