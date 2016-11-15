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

    private let appearanceConfigurator: AppearanceConfigurable = AppearanceConfigurator()
    private let appAssembler = SwinjectAssembler()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        appearanceConfigurator.setupAppearance()
        
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window.makeKeyAndVisible()
        self.window = window
        
        let mainVC = appAssembler.mainViewController()
        
        window.rootViewController = mainVC
        
        
        return true
    }

}

