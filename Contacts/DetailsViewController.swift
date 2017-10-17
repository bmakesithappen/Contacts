//
//  DetailsViewController.swift
//  Contacts
//
//  Created by Bernard Désert on 10/13/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UITextFieldDelegate {
    
/*
     
     TODO: Condense statement below to understand Optionals for UIViewControllers
     
      You might be wondering why our Contact object is optional – after all, won't this view only appear if we're using it to view a contact? That's true! But the lifecycle of the UIViewController object would make it very difficult to work with a non-optional contact variable. If contact wasn't optional, we'd have to make sure it had a value at the time the view controller was created – init. In reality, you rarely call init on a UIViewController directly. In this app, our UISegue handles initializing the DetailViewController for us. We'll still have an opportunity to modify the view controller before it is presented, but we don't have direct control over its init.
 
 */
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneNumberField: UITextField!
    var contact: Contacts?

    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.nameField {
            self.contact?.name = textField.text
        } else if textField == self.phoneNumberField {
            self.contact?.phoneNumber = textField.text
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self
        self.phoneNumberField.delegate = self
      
        if let contact = self.contact {
            if let name = contact.name {
                self.nameField.text = name
            }
            if let phoneNumber = contact.phoneNumber {
                self.phoneNumberField.text = phoneNumber
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
