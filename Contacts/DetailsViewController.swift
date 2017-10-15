//
//  DetailsViewController.swift
//  Contacts
//
//  Created by Bernard Désert on 10/13/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel! // double check code in earlier parts of lesson 1 changed to ! when it was ? confirm to remove error if anything put it back to ? and see error
    @IBOutlet var phoneNumberLabel: UILabel!
    var contact: Contacts?


    override func viewDidLoad() {
        super.viewDidLoad()
      
        if let contact = self.contact {
            if let name = contact.name {
                self.nameLabel.text = name
            }
            if let phoneNumber = contact.phoneNumber {
                self.phoneNumberLabel.text = phoneNumber
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
