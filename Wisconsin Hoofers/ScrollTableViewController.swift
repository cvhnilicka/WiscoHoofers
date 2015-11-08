//
//  ScrollTableViewController.swift
//  Wisconsin Hoofers
//
//  Created by Cormick Hnilicka on 11/6/15.
//  Copyright © 2015 Cormick Hnilicka. All rights reserved.
//

import UIKit

class ScrollTableViewController: UITableViewController {

    @IBOutlet weak var SnsInfo: UITextView!
    @IBOutlet weak var OutingInfo: UITextView!
    @IBOutlet weak var outinginfobutton: UIButton!

    @IBOutlet weak var SailingInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SnsInfo.hidden = true;
        self.SnsInfo.font = UIFont(name: SnsInfo.font!.fontName, size: 24);
        self.SnsInfo.alpha = 0;
        self.OutingInfo.alpha = 0;
        self.OutingInfo.hidden = true;
        self.OutingInfo.font = UIFont(name: OutingInfo.font!.fontName, size: 24);
        self.outinginfobutton.backgroundColor = UIColor(red: 141, green: 186, blue: 80, alpha: 0);
        self.OutingInfo.backgroundColor = UIColor(red: 0.55, green: 0.73, blue: 0.313, alpha: 0.75);
        self.OutingInfo.layer.cornerRadius = 10.0;
        self.SnsInfo.layer.cornerRadius = 10.0;
        self.SnsInfo.backgroundColor = UIColor(red: 0.44, green: 0.30, blue: 0.55, alpha: 0.75);
        self.SailingInfo.backgroundColor = UIColor(red: 0.36, green: 0.67, blue: 0.70, alpha: 0.75);
        self.SailingInfo.layer.cornerRadius = 10.0;
          self.SailingInfo.font = UIFont(name: SailingInfo.font!.fontName, size: 20);
        self.SailingInfo.hidden = true;
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
