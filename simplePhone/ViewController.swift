//
//  ViewController.swift
//  simplePhone
//
//  Created by 笹倉一也 on 2020/09/07.
//  Copyright © 2020 笹倉一也. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        ログインしているユーザーの取得
        let current_user = Auth.auth().currentUser
        let current_email = current_user?.email
        
        print(current_email!)
        
        
    }


}

