//
//  AppDelegate.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/4/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//

import UIKit
import Google
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyCTx-Xl4TGIKohPDyp7xFm9fU7GEV3PNWA");
        application.statusBarHidden = true;
        
        var configureError: NSError?
        GGLContext.sharedInstance().configureWithError(&configureError)
        assert(configureError == nil, "Error configuring Google services: \(configureError)")

        // Override point for customization after application launch.
        return FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
        
    }
    func application(application: UIApplication,
        openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
            
            return FBSDKApplicationDelegate.sharedInstance().application(
                application,
                openURL: url,
                sourceApplication: sourceApplication,
                annotation: annotation)
            
//            return GIDSignIn.sharedInstance().handleURL(url,
//                sourceApplication: sourceApplication,
//                annotation: annotation)
//            
           
    }
    
    // [START signin_handler]
//    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
//        withError error: NSError!) {
//            if (error == nil) {
//                // Perform any operations on signed in user here.
//                let userId = user.userID                  // For client-side use only!
//                let idToken = user.authentication.idToken // Safe to send to the server
//                let name = user.profile.name
//                let email = user.profile.email
//                // [START_EXCLUDE]
//                NSNotificationCenter.defaultCenter().postNotificationName(
//                    "ToggleAuthUINotification",
//                    object: nil,
//                    userInfo: ["statusText": "Signed in user:\n\(name)"])
//                // [END_EXCLUDE]
//            } else {
//                print("\(error.localizedDescription)")
//                // [START_EXCLUDE silent]
//                NSNotificationCenter.defaultCenter().postNotificationName(
//                    "ToggleAuthUINotification", object: nil, userInfo: nil)
//                // [END_EXCLUDE]
//            }
//    }

//    func signIn(signIn: GIDSignIn!, didDisconnectWithUser user:GIDGoogleUser!,
//        withError error: NSError!) {
//            // Perform any operations when the user disconnects from app here.
//            // [START_EXCLUDE]
//            NSNotificationCenter.defaultCenter().postNotificationName(
//                "ToggleAuthUINotification",
//                object: nil,
//                userInfo: ["statusText": "User has disconnected."])
//            // [END_EXCLUDE]
//    }
//
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
         FBSDKAppEvents.activateApp()
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

