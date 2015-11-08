//
//  SailingViewController.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/5/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//

import UIKit
import GoogleMaps

class SailingViewController: UIViewController, CLLocationManagerDelegate  {
    
    
    @IBOutlet weak var mapView: GMSMapView!
    

    var locationManager = CLLocationManager()
    
    var didFindMyLocation = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        mapView.addObserver(self, forKeyPath: "myLocation", options: NSKeyValueObservingOptions.New, context: nil);

        
        var camera = GMSCameraPosition.cameraWithLatitude(0, longitude: 45, zoom: 15)
        
        mapView = GMSMapView.mapWithFrame(CGRectMake(0, 0, 320, 320), camera: camera);
        
        self.navigationController?.navigationBarHidden = false;
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "sailing.png")?.drawInRect(self.view.bounds)
        
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
            mapView.camera = GMSCameraPosition.cameraWithTarget(myLocation.coordinate, zoom: 10.0)
            mapView.settings.myLocationButton = true
            
            didFindMyLocation = true
        }
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.AuthorizedWhenInUse {
            mapView.myLocationEnabled = true
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
