//
//  RegisterViewController.swift
//  Mai Duyên
//
//  Created by NDPhu on 7/11/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var captchaLabel: UILabel!
    let arrayString = ["a","b","c","d","e","f","g","h","i","k","m","n","l","p","q","t","u","s","x","r","y","v","w","z","0","1","2","3","4","5","6","7","8","9"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let captchString = arrayString.randomElement()! + arrayString.randomElement()! + arrayString.randomElement()! + arrayString.randomElement()! + arrayString.randomElement()!
        self.captchaLabel.text = captchString
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
