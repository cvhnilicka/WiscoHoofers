//
//  RidingViewController.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/5/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//

import UIKit
import GoogleMaps

class RidingViewController: UIViewController, CLLocationManagerDelegate, GMSMapViewDelegate  {
    
   
    @IBOutlet weak var ridingMap: GMSMapView!
  
    @IBOutlet weak var type: UIButton!
    
    var locationManager = CLLocationManager()
    
    var firstLocationUpdate: Bool?
    
    var didFindMyLocation = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var camera = GMSCameraPosition.cameraWithLatitude(0, longitude: 45, zoom: 5)
        ridingMap.animateToLocation(CLLocationCoordinate2DMake(43.1067, -89.4247));
        
        
        self.locationManager.delegate = self;
        self.locationManager.requestWhenInUseAuthorization()
        
        ridingMap.addObserver(self, forKeyPath: "myLocation", options: NSKeyValueObservingOptions.New, context: nil)
    
        ridingMap.delegate = self;

        
        self.navigationController?.navigationBarHidden = false;
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "riding.png")?.drawInRect(self.view.bounds)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: image)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true;
        // Do any additional setup after loading the view, typically from a nib.
    }
    
        override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
            if !didFindMyLocation {
                let myLocation: CLLocation = change![NSKeyValueChangeNewKey] as! CLLocation
                ridingMap.camera = GMSCameraPosition.cameraWithTarget(myLocation.coordinate, zoom: 10.0)
                ridingMap.settings.myLocationButton = true
    
                didFindMyLocation = true
            }
        }
    
        func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
            if status == CLAuthorizationStatus.AuthorizedWhenInUse {
                locationManager.startUpdatingLocation()
    
                ridingMap.myLocationEnabled = true
                
            }
        }
    
    override func viewWillDisappear(animated: Bool) {
        self.ridingMap.removeObserver(self, forKeyPath: "myLocation", context: nil);
    }
    
    @IBAction func changeMapType(sender: AnyObject) {
        let actionSheet = UIAlertController(title: "Map Types", message: "Select map type:", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let normalMapTypeAction = UIAlertAction(title: "Normal", style: UIAlertActionStyle.Default) { (alertAction) -> Void in
            self.ridingMap.mapType = kGMSTypeNormal
            self.type.setTitle("Normal", forState: .Normal)
        }
        
        let terrainMapTypeAction = UIAlertAction(title: "Terrain", style: UIAlertActionStyle.Default) { (alertAction) -> Void in
            self.ridingMap.mapType = kGMSTypeTerrain
            self.type.setTitle("Terrain", forState: .Normal)
        }
        
        let hybridMapTypeAction = UIAlertAction(title: "Hybrid", style: UIAlertActionStyle.Default) { (alertAction) -> Void in
            self.ridingMap.mapType = kGMSTypeHybrid
            self.type.setTitle("Hybrid", forState: .Normal)
        }
        
        let cancelAction = UIAlertAction(title: "Close", style: UIAlertActionStyle.Cancel) { (alertAction) -> Void in
            
        }
        
        actionSheet.addAction(normalMapTypeAction)
        actionSheet.addAction(terrainMapTypeAction)
        actionSheet.addAction(hybridMapTypeAction)
        actionSheet.addAction(cancelAction)
        
        presentViewController(actionSheet, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
