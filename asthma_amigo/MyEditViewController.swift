//
//  MyEditViewController.swift
//  asthma_amigo
//
//  Created by Apurba Nath on 11/4/19.
//  Copyright © 2019 Apurba Nath. All rights reserved.
//

import UIKit

class MyEditViewController: UIViewController {
    
    @IBOutlet weak var fNameText: UITextField!
    @IBOutlet weak var lNameText: UITextField!
    @IBOutlet weak var pNoText: UITextField!
    
    //declaring helper object for manipulating plist
    var plistHelper = PListHelper()
    
    @IBAction func saveChange(_ sender: Any) {
        let parentData = ["First Name": fNameText.text, "Last Name": lNameText.text, "Phone Number": pNoText.text]
        
        plistHelper.writePlist(namePlist: "contacts", key: "Parent", data: parentData as AnyObject)
        
        
        let alertController = UIAlertController(title: "Sucess", message: "The changes have been successfully saved!", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fNameText.text = plistHelper.readPlist(namePlist: "contacts", key: "Parent")["First Name"] as? String
        lNameText.text = plistHelper.readPlist(namePlist: "contacts", key: "Parent")["Last Name"] as? String
        pNoText.text = plistHelper.readPlist(namePlist: "contacts", key: "Parent")["Phone Number"] as? String

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
