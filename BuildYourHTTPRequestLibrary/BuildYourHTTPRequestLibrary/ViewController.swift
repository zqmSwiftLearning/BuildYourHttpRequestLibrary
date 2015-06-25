//
//  ViewController.swift
//  BuildYourHTTPRequestLibrary
//
//  Created by 张青明 on 15/6/25.
//  Copyright (c) 2015年 张青明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mainButtonBeTapped(sender: AnyObject) {
        let session = NSURLSession.sharedSession()
        let request = NSURLRequest(URL: NSURL(string: "http://baidu.com")!)
        let task    = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            
            println("Just wait for 5 seconds!")
            sleep(5)
            
            let string = NSString(data: data, encoding: NSUTF8StringEncoding)
            println(string)
        })
        task.resume()
        
    }

}

