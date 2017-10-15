//
//  Contacts.swift
//  Contacts
//
//  Created by Bernard Désert on 10/13/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class Contacts: NSObject {
    var name: String?
    var phoneNumber: String?
    
    init(name: String? = nil, phoneNumber: String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        super.init()
    }

}
