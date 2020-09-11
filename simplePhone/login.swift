//
//  login.swift
//  simplePhone
//
//  Created by 笹倉一也 on 2020/09/08.
//  Copyright © 2020 笹倉一也. All rights reserved.
//

import UIKit
import FirebaseAuth

class login: UIViewController {
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func login(_ sender: Any) {
    
//        ユーザーをログイン
        Auth.auth().signIn(withEmail: emailTF.text!, password: passTF.text!) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
          // ...
        }
        
        print("login success!")
        
        
    }
 
    
}
