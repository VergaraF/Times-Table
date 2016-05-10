//
//  ViewController.swift
//  Times Tables
//
//  Created by Fabian Vergara on 2016-05-07.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    let maxValueForTableView = 20
    
    @IBOutlet var sliderValue: UISlider!
    
    @IBAction func sliderListener(sender: AnyObject) {
        print(sliderValue.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return maxValueForTableView
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default,reuseIdentifier: "Cell")
        
        let timesTableValue = Int(sliderValue.value * 20)
        
        cell.textLabel?.text = String(timesTableValue * indexPath.row)
        
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

