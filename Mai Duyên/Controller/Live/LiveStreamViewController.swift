//
//  LiveStreamViewController.swift
//  Mai Duyên
//
//  Created by vMio on 6/13/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class LiveStreamViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if check == false{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideoTableViewCell", for: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }

    var count = 10
    var check = false
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastSectionIndex = tableView.numberOfSections - 1
        let lastRowIndex = count - 1
        let spinner = UIActivityIndicatorView(style: .white)
        spinner.startAnimating()
        spinner.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: tableView.bounds.width, height: CGFloat(44))
        if indexPath.section ==  lastSectionIndex && indexPath.row == lastRowIndex {
            count += 10
            self.tableView.tableFooterView = spinner
            self.tableView.tableFooterView?.isHidden = false
            self.tableView.reloadData()
        }
    }
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib.init(nibName: "VideoTableViewCell", bundle: nil), forCellReuseIdentifier: "VideoTableViewCell")
        self.tableView.reloadData()
        self.tableView.showLoader()
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(self.changeCheck), userInfo: nil, repeats: false)
    }
    
    
    @objc func changeCheck(){
        self.check = true
        self.tableView.hideLoader()
        self.tableView.reloadData()
    }
}
