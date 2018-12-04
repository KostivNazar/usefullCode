//
//  AppDelegate.swift
//  Storin Dat Fire
//
//  Created by Kyle Lee on 12/4/17.
//  Copyright © 2017 Kilo Loco. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        FIRFirestoreService.shared.configure()
        
        return true
    }

}

