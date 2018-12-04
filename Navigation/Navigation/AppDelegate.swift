//
//  AppDelegate.swift
//  Navigation
//
//  Created by Nazar Kostiv on 9/10/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit
var isAuth = false

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var navigationController: UINavigationController?
  var rootViewController: RootViewController?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//    rootViewController = RootViewController()
//    let rootScreen = rootViewController?.showRoot(viewController: OnboardingViewController.self)
//    window = UIWindow(frame: UIScreen.main.bounds)
//    navigationController = UINavigationController(rootViewController: rootScreen!)
//    window?.rootViewController = navigationController
//    window?.makeKeyAndVisible()
    return true
  }
}

