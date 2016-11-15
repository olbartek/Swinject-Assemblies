//
//  RegistrationNameAssociatable.swift
//  Swinject
//
//  Created by Yoichi Tagaya on 8/1/15.
//  Copyright © 2015 Swinject Contributors. All rights reserved.
//

import Foundation
import ObjectiveC

internal protocol RegistrationNameAssociatable: AnyObject {
    var swinjectRegistrationName: String? { get set }
}

extension RegistrationNameAssociatable {
    internal func getAssociatedString(key: UnsafeRawPointer) -> String? {
        return objc_getAssociatedObject(self, key) as? String
    }
    
    internal func setAssociatedString(_ string: String?, key: UnsafeRawPointer) {
        objc_setAssociatedObject(self, key, string, objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
    }
}
