//
//  SickViewController.swift
//  Cares
//
//  Created by DE DPU on 4/29/2559 BE.
//  Copyright © 2559 MyApplication. All rights reserved.
//

import UIKit

class SickViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var objects: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.objects.addObject("iPhone")
        self.objects.addObject("Mac")
        self.objects.addObject("Apple")
        
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Table View
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.titleLabel.text = self.objects.objectAtIndex(indexPath.row) as? String
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "showView")
        {
            var upcoming: NewViewController = segue.destinationViewController as! NewViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow!
            let titleString = self.objects.objectAtIndex(indexPath.row) as? String
            
            upcoming.titleString = titleString
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
            
        }
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
