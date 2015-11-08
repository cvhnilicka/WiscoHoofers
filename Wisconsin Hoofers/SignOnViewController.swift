//
//  SignOnViewController.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/7/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//

import UIKit
import Google

class SignOnViewController: UIViewController {

    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var EmailAddress: UITextField!
  
    
    @IBOutlet weak var signon: GIDSignInButton!
    
    var temp = GIDSignIn.sharedInstance()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
//        temp.delegate =
      
    }
    // Stop the UIActivityIndicatorView animation that was started when the user
    // pressed the Sign In button
//    func signInWillDispatch(signIn: GIDSignIn!, error: NSError!) {
//        myActivityIndicator.stopAnimating()
//    }
    
    // Present a view that prompts the user to sign in with Google
    func signIn(signIn: GIDSignIn!,
        presentViewController viewController: UIViewController!) {
            self.presentViewController(viewController, animated: true, completion: nil)
    }
    
    // Dismiss the "Sign in with Google" view
    func signIn(signIn: GIDSignIn!,
        dismissViewController viewController: UIViewController!) {
            self.dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
