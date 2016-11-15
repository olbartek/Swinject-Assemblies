//
//  SwinjectManagerAssembly.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import Swinject

class SwinjectManagerAssembly: AssemblyType {
    
    func assemble(container: Container) {
        
        container.register(Networkable.self) { _ in
            NetworkManager()
        }.inObjectScope(.hierarchy)
        
        container.register(Bluetoothable.self) { _ in
            BluetoothManager()
        }.inObjectScope(.hierarchy)
        
        container.register(Databaseable.self) { _ in
            DatabaseManager()
        }.inObjectScope(.hierarchy)
    }
    
}
