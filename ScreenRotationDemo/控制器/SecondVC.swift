//
//  SecondVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/12.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class SecondVC: BaseVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // 点击无用,因为被关闭了
    @IBAction func leftAction(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "提示", message: "界面旋转已关闭", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        
        let action = UIAlertAction(title: "知道了", style: .default, handler: nil)
        alertController.addAction(action)
        
        let orientation = UIInterfaceOrientation.landscapeRight
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
}
