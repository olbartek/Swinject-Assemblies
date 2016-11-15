//
//  SwinjectMockManagerAssembly.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import Swinject

class SwinjectMockManagerAssembly: SwinjectManagerAssembly {
    
    override func assemble(container: Container) {
        // Call super to register non-mock classes
        super.assemble(container: container)
        
        // ovverride registration of classes with mock classes 
        
        container.register(Networkable.self) { _ in
            MockNetworkManager()
            }.inObjectScope(.hierarchy)
        
        container.register(Bluetoothable.self) { _ in
            MockBluetoothManager()
            }.inObjectScope(.hierarchy)
        
//        container.register(Databaseable.self) { _ in
//            MockDatabaseManager()
//        }.inObjectScope(.Hierarchy)
    }
    
}
