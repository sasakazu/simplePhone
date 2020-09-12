//
//  addAddress.swift
//  simplePhone
//
//  Created by 笹倉一也 on 2020/09/08.
//  Copyright © 2020 笹倉一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class addAddress: UIViewController {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    
    @IBAction func save(_ sender: Any) {
        
        let db = Firestore.firestore()
        
        let docData:[String:Any] = [
            "name": "sasa",
            "phonenumber": 0909090,
            "profileimage": "test"
        ]

        db.collection("data").document("one").setData(docData) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
  

}
