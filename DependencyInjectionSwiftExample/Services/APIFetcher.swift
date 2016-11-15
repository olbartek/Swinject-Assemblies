//
//  APIFetcher.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation

class APIFetcher: BaseObject, APIFetcherServiceType {
    
    fileprivate let networkManager: Networkable
    fileprivate let databaseManager: Databaseable
    
    init(networkManager: Networkable, databaseManager: Databaseable) {
        
        self.networkManager = networkManager
        self.databaseManager = databaseManager
        
        super.init()
    }
    
    func fetchFromAPI() {
        
    }
}
