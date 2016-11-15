//
//  BaseObject.swift
//  DependencyInjectionSwiftExample
//
//  Created by Bartosz Olszanowski on 06/09/16.
//  Copyright © 2016 Bartosz Olszanowski. All rights reserved.
//

import Foundation

class BaseObject {
    
}

extension BaseObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    var nameOfClass: String {
        return NSStringFromClass(self.dynamicType).componentsSeparatedByString(".").last!
    }
}