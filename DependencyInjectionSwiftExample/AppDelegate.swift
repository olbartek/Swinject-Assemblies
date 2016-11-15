//
//  AppDelegate.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import UIKit
import Swinject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    fileprivate let appearanceConfigurator: AppearanceConfigurable = AppearanceConfigurator()
    fileprivate let appAssembler = SwinjectAssembler()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        appearanceConfigurator.setupAppearance()
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        self.window = window
        
        let mainVC = appAssembler.mainViewController()
        
        window.rootViewController = mainVC
        
        
        return true
    }

}

