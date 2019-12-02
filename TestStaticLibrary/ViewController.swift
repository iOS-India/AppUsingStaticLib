//
//  ViewController.swift
//  TestStaticLibrary
//
//  Created by Anurag Sharma on 02/12/19.
//  Copyright © 2019 Anurag Sharma. All rights reserved.
//

import UIKit
import DemoStaticLib
import ACryptor

class ViewController: UIViewController {
    let tokenizer = Tokenizer() // 2
    let service = AuthenticationService()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let loginToken = service.login("try", "coding");
        let token = tokenizer.generateToken("user", "S7eo#0-2K&b") // 3
               print("token: \(token)") // 4
        print("login Token :\(loginToken)")
    }


}

