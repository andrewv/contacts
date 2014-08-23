//
//  ContactInput.swift
//  Contacts
//
//  Created by ANDREW VARVEL on 23/08/2014.
//  Copyright (c) 2014 ANDREW VARVEL. All rights reserved.
//

import UIKit

protocol dataUpdated:NSObjectProtocol {
    
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String)
}

class ContactInput: UIViewController, UITextFieldDelegate {
        
    
    //stored properties
    var name = ""
    var phone = ""
    var delegate: dataUpdated?


    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var phoneField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameField.delegate = self
        self.phoneField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        if textField.tag == 1 {
            self.name = nameField.text
        } else {
            self.phone = phoneField.text
        }
        
        println("the name is \(name) and the phone is \(phone)")
        
        textField.resignFirstResponder()

        return true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if name != "" && phone != "" {
            self.delegate!.didUpdateContact(self, aName: self.name, aPhoneNumber: self.phone)
        }
    }


}
