//
//  ViewController.swift
//  Mai Duyên
//
//  Created by vMio on 5/29/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit
import UserNotifications

class NewFeedViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource, UNUserNotificationCenterDelegate{
    
    @IBOutlet weak var mdTableView: UITableView!
    @IBOutlet weak var img1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createNotifiLocal()
        img1.layer.cornerRadius = img1.frame.width/2
        img1.layer.masksToBounds = true
        mdTableView.register(UINib.init(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
        mdTableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

    func checkInternet() {
        //check internet
        if ConnectionCheck.isConnectedToNetwork() {
            print("Connected")
        }
        else{
            print("disConnected")
        }
    }
    
    func createNotifiLocal() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (check, error) in
        }
        UNUserNotificationCenter.current().delegate = self

        let content = UNMutableNotificationContent()
        content.title = "Bạn có 1 thông báo"
        content.title = "Nguyễn Đình Phú"
        content.badge = 3
        content.categoryIdentifier = "category"
        
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest.init(identifier: "request", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        let action = UNNotificationAction(identifier: "action", title: "ok", options: .foreground)
        let category = UNNotificationCategory.init(identifier: "category", actions: [action], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([category])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 200
        }else{
            return 500
        }
    }

}

