//
//  ViewController.swift
//  firsapp
//
//  Created by keith white on 5/23/17.
//  Copyright © 2017 keith white. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: Any) {
        if username.text != "" && password.text != "" {
            print("success")
    
        } else {
            
            let alert = UIAlertController(title: "Failed!", message:"Wrong usename or password",  preferredStyle: .alert)
            let action1 = UIAlertAction(title: "Try again", style: UIAlertActionStyle.default, handler: {
                (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
                
            })
            alert.addAction(action1)
            self.present(alert, animated: true, completion: nil)
            
        }
    }
}


