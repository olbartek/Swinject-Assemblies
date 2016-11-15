//
//  SwinjectServiceAssembly.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import Swinject

class SwinjectServiceAssembly: AssemblyType {
    
    func assemble(container: Container) {
        
        container.register(APIFetcherServiceType.self) { r in
            APIFetcher(networkManager: r.resolve(Networkable.self)!, databaseManager: r.resolve(Databaseable.self)!)
            }.inObjectScope(.hierarchy)
        
    }
    
}
