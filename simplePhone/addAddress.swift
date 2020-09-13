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
        
//        firebase初期化
        let db = Firestore.firestore()
        
//        ログインしているユーザーの取得
        let current = Auth.auth().currentUser
        
        // phonenumberをIntに変更する
        let str1:String = phoneNumber.text!
        let number:Int = Int(str1)!
        
//        データベースに格納データ
        let docData:[String:Any] = [
            "name": name.text!,
            "phonenumber": number,
            "profileimage": "test"
        ]

//        firestoreにデータを追加する
        db.collection(current!.uid).addDocument(data: docData) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
        
    }
    
    
    @IBAction func cancel(_ sender: Any) {
//        戻るボタンも実装
        dismiss(animated: true, completion: nil)
    }
    
  

}
