//
//  MainViewModel.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation

class MainViewModel {
    
    private let apiFetcher: APIFetcherServiceType
    
    init(apiFetcher: APIFetcherServiceType) {
        
        self.apiFetcher = apiFetcher
    }
    
    func printDependencies() {
        if self.apiFetcher is BaseObject {
            print((self.apiFetcher as! BaseObject).nameOfClass)
        }
        
    }
}