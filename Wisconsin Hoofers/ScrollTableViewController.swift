//
//  ScrollTableViewController.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/6/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//

import UIKit

class ScrollTableViewController: UITableViewController {

    //the text views of each club
    @IBOutlet weak var MountaineeringInfo: UITextView!
    @IBOutlet weak var SnsInfo: UITextView!
    @IBOutlet weak var OutingInfo: UITextView!
    @IBOutlet weak var outinginfobutton: UIButton!
    @IBOutlet weak var ScubaInfo: UITextView!
    @IBOutlet weak var RidingInfo: UITextView!

    @IBOutlet weak var SailingInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set info to hidden
        self.RidingInfo.hidden = true;
        self.MountaineeringInfo.hidden = true;
        self.ScubaInfo.hidden = true;
        self.SnsInfo.hidden = true;
        self.OutingInfo.hidden = true;
        self.SailingInfo.hidden = true;
        
        
        //Setting fonts
        self.RidingInfo.font = UIFont(name: RidingInfo.font!.fontName, size: 20);
        self.MountaineeringInfo.font = UIFont(name: MountaineeringInfo.font!.fontName, size: 20);
        self.ScubaInfo.font = UIFont(name: ScubaInfo.font!.fontName, size: 20);
        self.SnsInfo.font = UIFont(name: SnsInfo.font!.fontName, size: 20);
        self.OutingInfo.font = UIFont(name: OutingInfo.font!.fontName, size: 24);
        self.SailingInfo.font = UIFont(name: SailingInfo.font!.fontName, size: 20);
        
        
        //set color for info background
        self.RidingInfo.backgroundColor = UIColor(red: 0.745, green: 0.62, blue: 0.525, alpha: 0.90);
        self.MountaineeringInfo.backgroundColor = UIColor(red: 0.478, green: 0.463, blue: 0.455, alpha: 0.90);
        self.ScubaInfo.backgroundColor = UIColor(red: 0.11, green: 0.286, blue: 0.396, alpha: 0.90);
        self.OutingInfo.backgroundColor = UIColor(red: 0.55, green: 0.73, blue: 0.313, alpha: 0.90);
        self.SailingInfo.backgroundColor = UIColor(red: 0.36, green: 0.67, blue: 0.70, alpha: 0.90);
        self.SnsInfo.backgroundColor = UIColor(red: 0.44, green: 0.30, blue: 0.55, alpha: 0.90);
        
        
        //set transparencies for fade in effect
        self.SnsInfo.alpha = 0;
        self.MountaineeringInfo.alpha = 0;
        self.RidingInfo.alpha = 0;
        self.ScubaInfo.alpha = 0;
        self.SailingInfo.alpha = 0;
        self.OutingInfo.alpha = 0;
        
       
        //set corner radius for rounded corners
        self.RidingInfo.layer.cornerRadius = 10;
        self.MountaineeringInfo.layer.cornerRadius = 10;
        self.SnsInfo.layer.cornerRadius = 10;
        self.ScubaInfo.layer.cornerRadius = 10;
        self.SailingInfo.layer.cornerRadius = 10;
        self.OutingInfo.layer.cornerRadius = 10.0;

        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewdWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    @IBAction func showRidingInfo(sender: AnyObject) {
        UIView.animateWithDuration(1.5, animations: {
            self.RidingInfo.hidden = false;
            self.RidingInfo.alpha = 2;
        })
    }
    
    @IBAction func hideRidingInfo(sender: AnyObject) {
        UIView.animateWithDuration(0, animations: {
            self.RidingInfo.alpha = 0;
            }, completion: {
                (value: Bool) in
                self.RidingInfo.hidden = true;
        })
    }

    @IBAction func showMountaineeringInfo(sender: AnyObject) {
        UIView.animateWithDuration(1.5, animations: {
            self.MountaineeringInfo.hidden = false;
            self.MountaineeringInfo.alpha = 2;
        })
    }
    
    @IBAction func hideMountaineeringInfo(sender: AnyObject) {
        UIView.animateWithDuration(0, animations: {
            self.MountaineeringInfo.alpha = 0;
            }, completion: {
                (value: Bool) in
                self.MountaineeringInfo.hidden = true;
        })
    }
    
    @IBAction func showScubaInfo(sender: AnyObject) {
        UIView.animateWithDuration(1.5, animations: {
            self.ScubaInfo.hidden = false;
            self.ScubaInfo.alpha = 2;
        })
    }
   
  
    @IBAction func hideScubaInfo(sender: AnyObject) {
        UIView.animateWithDuration(0, animations: {
            self.ScubaInfo.alpha = 0;
            }, completion: {
                (value: Bool) in
                self.ScubaInfo.hidden = true;
        })
    }
    
    @IBAction func showSailingInfo(sender: AnyObject) {
        UIView.animateWithDuration(1.5, animations: {
            self.SailingInfo.hidden = false;
            self.SailingInfo.alpha = 2;
        })
    }
    
    @IBAction func hideSailingInfo(sender: AnyObject) {
        UIView.animateWithDuration(0, animations: {
            self.SailingInfo.alpha = 0;
            }, completion: {
                (value: Bool) in
                self.SailingInfo.hidden = true;
        })
    }
    @IBAction func showSnsInfo(sender: AnyObject) {
        UIView.animateWithDuration(1.5, animations: {
            self.SnsInfo.hidden = false;
            self.SnsInfo.alpha = 2;
        })
    }
    
    @IBAction func hideSnsInfo(sender: AnyObject) {
        UIView.animateWithDuration(0, animations: {
            self.SnsInfo.alpha = 0;
            }, completion: {
                (value: Bool) in
                self.SnsInfo.hidden = true;
        })
    }
    @IBAction func showOutingInfo(sender: AnyObject) {
        
        UIView.animateWithDuration(1.5, animations:  {
            self.OutingInfo.hidden = false;
            self.OutingInfo.alpha = 2;
        })
    }
    @IBAction func hideOutingInfo(sender: AnyObject) {
        UIView.animateWithDuration(0, animations: {
            self.OutingInfo.alpha = 0;
            }, completion: {
                (value: Bool) in
                self.OutingInfo.hidden = true;
        })
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
