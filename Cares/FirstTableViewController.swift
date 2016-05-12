//
//  FirstTableViewController.swift
//  Cares
//
//  Created by DE DPU on 5/10/2559 BE.
//  Copyright © 2559 MyApplication. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    var FirstTableArray = [String]()
    var SecondArray = [SecondTable]()
    var ThirdArray = [ThirdView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        FirstTableArray = ["First", "Second", "Third", "Fourth"]
        
        SecondArray =
            [SecondTable(SecondTitle: ["FirstFirst", "SecondFirst", "ThirdFirst"]),
            SecondTable(SecondTitle: ["FirstSecond", "SecondSecond", "ThirdSecond"]),
                SecondTable(SecondTitle: ["FirstThird", "SecondThird", "ThirdThird"]),
                SecondTable(SecondTitle: ["FirstFourth"])]
        
        ThirdArray = [ThirdView(ThirdViewArray: ["aaaa","bbbb","cccc"]),
            ThirdView(ThirdViewArray: ["dddd","eeee","ffff"]),
            ThirdView(ThirdViewArray: ["gggg","hhhh","iiii"]),
            ThirdView(ThirdViewArray: ["jjjj"])]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        var DestViewController = segue.destinationViewController as! SecondTableViewController
        var SecondTableArrayTwo : SecondTable
        var ThirdAnswerArray : ThirdView
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        DestViewController.SecondAnswerArray = ThirdAnswerArray.ThirdViewArray
        
        
        
    }
    
}
