//
//  Contacts.swift
//  Contacts
//
//  Created by Bernard Désert on 10/13/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit
// TODO: Condense comments line 13 = 19

/*
  This file is a Contact object to represent each contact and their data.
 
 Because both properties are optional, we aren't required to create an initializer function. For the sake of convenience (and practice!) though, let's add one anyway:
 Because we made the properties of the Contact class optional and we gave them both a default value of nil in the initializer, we can create a Contact object no matter which properties we know at the time of creation. All three of these statements are valid:
 
 The properties not specified at init time will just default to nil. This gives us the flexibility of using init with just the data we have but retains the safety of optionals.
 */

class Contacts: NSObject { // BD: We are explicitly adding type.  Swift objects are not required to inherit but if are you accessing old methods (NSObject) of OBjC and this also makes it more readable for yourself and others that the type for this object is NSObject
    
    var name: String?
    var phoneNumber: String?
    var address: String?
    var cool: Bool
    
    // TODO: when to call super.init 
    // instantiate variables ,
    init(name: String? = nil, phoneNumber: String? = nil, address: String? = nil, cool: Bool = false) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.address = address
        self.cool = cool
        super.init()

    }
    //             coolSwitch.isOn = contact.cool

}

