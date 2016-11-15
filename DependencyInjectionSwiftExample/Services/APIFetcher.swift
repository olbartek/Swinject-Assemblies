//
//  APIFetcher.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation

class APIFetcher: BaseObject, APIFetcherServiceType {
    
    private let networkManager: Networkable
    private let databaseManager: Databaseable
    
    init(networkManager: Networkable, databaseManager: Databaseable) {
        
        self.networkManager = networkManager
        self.databaseManager = databaseManager
        
        super.init()
    }
    
    func fetchFromAPI() {
        
    }
}