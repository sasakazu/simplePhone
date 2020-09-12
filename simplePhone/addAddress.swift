//
//  addAddress.swift
//  simplePhone
//
//  Created by 笹倉一也 on 2020/09/08.
//  Copyright © 2020 笹倉一也. All rights reserved.
//

import UIKit
import FirebaseAuth

class addAddress: UIViewController {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    
    @IBAction func save(_ sender: Any) {
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
  

}
