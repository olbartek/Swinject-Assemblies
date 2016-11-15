//
//  SwinjectViewModelAssembly.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation
import Swinject

class SwinjectViewModelAssembly: AssemblyType {
    
    func assemble(container: Container) {
        container.register(MainViewModel.self) { r in
            MainViewModel(apiFetcher: r.resolve(APIFetcherServiceType)!)
        }.inObjectScope(.Hierarchy)
    }
    
}