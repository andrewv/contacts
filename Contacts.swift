//
//  Contacts.swift
//  Contacts
//
//  Created by ANDREW VARVEL on 23/08/2014.
//  Copyright (c) 2014 ANDREW VARVEL. All rights reserved.
//

import UIKit

class Contacts: UITableViewController, dataUpdated {
    
    struct contactInfo {
        var name: String
        var phoneNumber: String
    }
    
    var listOfContacts: [contactInfo] = []
    
    //Basic contacts
    
    
    var firstContact = contactInfo(name: "Andrew Varvel", phoneNumber: "0400 123 456")
    var secondContact = contactInfo(name: "John Smith", phoneNumber: "0411 123 456")

    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return listOfContacts.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = listOfContacts[indexPath.row].name
        cell.detailTextLabel.text = listOfContacts[indexPath.row].phoneNumber
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfContacts.append(firstContact)
        listOfContacts.append(secondContact)
    }
    
    
    
    //Passing details to detail VC
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        if segue.identifier == "ToDetail" {
            
            let indexPath = self.tableView.indexPathForSelectedRow()
            let theSelectedRow = listOfContacts[indexPath.row]
            let theDestination = (segue.destinationViewController as ContactDetails)
            
            
            theDestination.contactName = theSelectedRow.name
            theDestination.contactPhone = theSelectedRow.phoneNumber
        } else if segue.identifier == "ToInput"
        {
            (segue.destinationViewController as ContactInput).delegate = self

            
        }
    }

    //Delegate method to update the array with new contact
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String) {
        
        var newContact = contactInfo(name: aName, phoneNumber: aPhoneNumber)
        listOfContacts.append(newContact)
        
        self.tableView.reloadData()
    }
    
    
    

}
