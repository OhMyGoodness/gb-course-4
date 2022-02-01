//
//  ViewController.swift
//  gb-course-4
//
//  Created by Данила Лазин on 26.01.2022.
//

import UIKit

class LoginController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (identifier == "loginSegue"){
            if (loginTextField.text == "" && passwordTextField.text == ""){
                return true
            }
        }
        
        return false
    }
}

