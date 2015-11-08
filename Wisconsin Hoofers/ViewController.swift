//
//  ViewController.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/4/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var HoofersLogo: UIImageView!
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

