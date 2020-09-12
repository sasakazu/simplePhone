//
//  signup.swift
//  simplePhone
//
//  Created by 笹倉一也 on 2020/09/08.
//  Copyright © 2020 笹倉一也. All rights reserved.
//

import UIKit
import FirebaseAuth

class signup: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
//  会員登録
    @IBAction func signup(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTF.text!, password: passTF.text!) { authResult, error in
            
        }
        print("signup success!")
    
    }
    
//    logout
    @IBAction func logout(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        
        }
    }
    
    
    

}
