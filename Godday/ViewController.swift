//
//  ViewController.swift
//  Godday
//
//  Created by sun ryker on 2022/1/29.
//  Copyright © 2022年 SweetHome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let day = Calendar.current.component(.day, from: Date())
    
    
    var TodayIsTheGodday: String = "今天是齋日!"
    var TodayIsNotTheGodday: String = "今天不是齋日!"
    
    let godday = [1, 8, 14, 15, 18, 23, 24, 28, 29, 30]
    
    var temp: Int = 0
    var resultDay: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        for god in godday {
//            if day == god {
//                let resultDay = TodayIsTheGodday
//            }
//        }
//        let resultDay = TodayIsNotTheGodday
    }


    @IBAction func showAlertButtonTapped(_ sender: UIButton) {
        
        for god in godday {
            if day == god {
                temp = 1
            }
        }
        
        if temp == 1 {
            resultDay = TodayIsTheGodday
        }
        else {
            resultDay = TodayIsNotTheGodday
        }
        
        // create the alert
        let alert = UIAlertController(title: "結果", message: resultDay, preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "關閉", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }

}

