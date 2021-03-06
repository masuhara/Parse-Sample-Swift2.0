//
//  ParseManager.swift
//  Parse-Sampler
//
//  Created by Masuhara on 2015/10/01.
//  Copyright © 2015年 masuhara. All rights reserved.
//

import UIKit

class ParseManager: NSObject {
    class func setID(id: String, withKey key: String) {
        Parse.setApplicationId(id, clientKey:key)
        PFUser.currentUser()
        let defaultACL = PFACL()
        defaultACL.setPublicReadAccess(true)
        defaultACL.setPublicWriteAccess(true)
        PFACL.setDefaultACL(defaultACL, withAccessForCurrentUser: true)
    }
}
