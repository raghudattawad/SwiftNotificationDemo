//
//  ViewController.swift
//  SwiftNotifictionDemo
//
//  Created by Raghavendra Dattawad on 11/1/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "body"
        content.sound = UNNotificationSound.default
        
        
        let trigger =  UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "testIdentifer", content: content, trigger: trigger)
    
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}

