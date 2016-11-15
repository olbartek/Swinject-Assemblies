//
//  SwinjectViewControllerAssembly.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import Swinject

class SwinjectViewControllerAssembly: AssemblyType {
    
    func assemble(container: Container) {
        
        container.registerForStoryboard(MainViewController.self) {r, c in
            c.viewModel = r.resolve(MainViewModel.self)
        }
    }
    
}