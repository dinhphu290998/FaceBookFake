//
//  MenuViewController.swift
//  Mai Duyên
//
//  Created by vMio on 6/13/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let arrName = ["Mai Duyên","Hẹn Hò","Nhóm","Bạn bè","Video trên Watch","Sự kiện","Kỷ niệm","Đã lưu","Trang","Địa điểm quanh đây","Đề xuất","Kết bạn mới","Xem thêm","Trợ giúp & Hỗ trợ","Cài đặt & quyền riêng tư","Đăng xuất"]
    let arrStringImage = ["maiduyen","like (3)","group","friends","live-streaming","event","three-oclock","save-button","flag","place","election-event-on-a-calendar-with-star-symbol","manager","flag","info","settings","exit"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        cell.optionLB.text = arrName[indexPath.row]
        cell.photo.image = UIImage.init(named: arrStringImage[indexPath.row])
        if indexPath.row == 0{
            cell.photo.layer.cornerRadius = 15
            cell.photo.layer.masksToBounds = true
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            self.performSegue(withIdentifier: "showProfile", sender: self)
        }
    }
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
