//
//  EditProfileViewController.swift
//  asthma_amigo
//
//  Created by Apurba Nath on 11/4/19.
//  Copyright © 2019 Apurba Nath. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    @IBOutlet weak var optionsBar: UISegmentedControl!
    
    //views
    @IBOutlet weak var myDetailView: UIView!
    @IBOutlet weak var childDetailView: UIView!
    @IBOutlet weak var docDetailView: UIView!
    
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

        
        
        
    }
    
    
    @IBAction func changeOptions(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            myDetailView.alpha = 1
            childDetailView.alpha = 0
            docDetailView.alpha = 0
            break
        case 1:
            myDetailView.alpha = 0
            childDetailView.alpha = 1
            docDetailView.alpha = 0
            break
        case 2:
            myDetailView.alpha = 0
            childDetailView.alpha = 0
            docDetailView.alpha = 1
            break
        default:
            myDetailView.alpha = 1
            childDetailView.alpha = 0
            docDetailView.alpha = 0
            break
        }
        
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
