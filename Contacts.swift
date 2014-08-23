//
//  Contacts.swift
//  Contacts
//
//  Created by ANDREW VARVEL on 23/08/2014.
//  Copyright (c) 2014 ANDREW VARVEL. All rights reserved.
//

import UIKit

class Contacts: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return listOfContacts.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = listOfContacts[indexPath.row].name
        cell.detailTextLabel.text = listOfContacts[indexPath.row].phoneNumber
        
        return cell
    }
    
    struct contactInfo {
        var name: String
        var phoneNumber: String
    }
    
    var listOfContacts: [contactInfo] = []
    
    var firstContact = contactInfo(name: "Andrew Varvel", phoneNumber: "0400 123 456")
    var secondContact = contactInfo(name: "John Smith", phoneNumber: "0411 123 456")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfContacts.append(firstContact)
        listOfContacts.append(secondContact)
    }
    

}
