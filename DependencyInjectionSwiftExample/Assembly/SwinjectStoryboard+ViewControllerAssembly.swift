//
//  SwinjectStoryboard+ViewControllerAssembly.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 07/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import Swinject

extension SwinjectStoryboard {
    public static func setup() {
        defaultContainer.registerForStoryboard(MainViewController.self, name: "Main") {r, c in
            c.viewModel = r.resolve(MainViewModel.self)
        }
    }
}