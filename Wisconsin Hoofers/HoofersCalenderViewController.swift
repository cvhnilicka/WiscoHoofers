//
//  HoofersCalenderViewController.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/4/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//
import UIKit
import Google

class HoofersCalenderViewController: UIViewController, GIDSignInUIDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = false;
        GIDSignIn.sharedInstance().uiDelegate = self;

        // Do any additional setup after loading the view, typically from a nib.
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}