//
//  ViewController.swift
//  WeatherApp
//
//  Created by apappu on 1/8/15.
//  Copyright (c) 2015 edu.self. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var weatherDataTableView: UITableView!
    
   // @IBOutlet var tableView: UITableView?
    

    let cellIdentifier = "cellIdentifier"
    var tableData = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            // Register the UITableViewCell class with the tableView
        
        
        self.weatherDataTableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        
        // Setup table data
        for index in 0...100 {
            self.tableData.append("Item \(index)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel?.text = self.tableData[indexPath.row]
        
        return cell
    }
    
    // UITableViewDelegate methods
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        let alert = UIAlertController(title: "Item selected", message: "You selected item \(indexPath.row)", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK",
            style: UIAlertActionStyle.Default,
            handler: {
                (alert: UIAlertAction!) in println("An alert of type \(alert.style.hashValue) was tapped!")
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    

   func getWeatherData()->Array<String> {
        //var weatherData: [Array<String>] = ["Eggs", "Milk"]
       var weatherData = Array<String>()
    //weatherData[1]=""
    weatherData.append("Eggs")
    weatherData.append("Milk")
        return weatherData
        
    }
   
}

