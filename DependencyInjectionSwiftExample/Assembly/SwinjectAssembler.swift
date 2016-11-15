//
//  SwinjectApplicationAssembly.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class SwinjectAssembler: BaseObject {
    
    class var sharedInstance: SwinjectAssembler {
        struct Static {
            static let instance = SwinjectAssembler()
        }
        return Static.instance
    }
    
    private let assembler = try! Assembler(assemblies: [
        SwinjectManagerAssembly(),
        SwinjectServiceAssembly(),
        SwinjectViewModelAssembly(),
        SwinjectViewControllerAssembly()
        ], container: SwinjectStoryboard.defaultContainer)
    
}

extension SwinjectAssembler {
    
    func mainViewController() -> MainViewController {
        let mainVC = SwinjectStoryboard.create(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Main") as! MainViewController
        return mainVC
    }
    
}

extension UIViewController {
    var assembler: SwinjectAssembler { return SwinjectAssembler.sharedInstance }
}
