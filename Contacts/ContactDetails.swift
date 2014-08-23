//
//  ContactDetails.swift
//  Contacts
//
//  Created by ANDREW VARVEL on 23/08/2014.
//  Copyright (c) 2014 ANDREW VARVEL. All rights reserved.
//

import UIKit

class ContactDetails: UIViewController {

    @IBOutlet weak var contactNameLabel: UILabel!
    
    @IBOutlet weak var contactPhoneLabel: UILabel!
    
    var contactName = ""
    var contactPhone = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactNameLabel.text = contactName
        contactPhoneLabel.text = contactPhone
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
