//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by mac on 16/5/24.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birth: UITextField!
    @IBOutlet weak var chineseImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //点击空白处显示
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        birth.resignFirstResponder()//textfiled失去焦点
    }
    
    //点击确定按钮
    @IBAction func OKBtn(sender: UIButton) {
        birth.resignFirstResponder()
        if let year = Int(birth.text!) {
            let index = (year - 4) % 12
            chineseImage.image = UIImage(named: "\(index).jpg")
        }
    }


}

