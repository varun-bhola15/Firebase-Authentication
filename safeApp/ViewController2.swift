//
//  ViewController2.swift
//  safeApp
//
//  Created by varun bhola on 05/01/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit
import FirebaseAuth
class ViewController2: UIViewController
{
    @IBAction func action(_ sender: UIButton) {
        
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(Auth.auth().currentUser?.email)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
