//
//  ViewController.swift
//  CountryApp
//
//  Created by Panah Suleymanli on 13.04.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTextField: UILabel!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func enterTapped(_ sender: Any) {
        let nextPage = storyboard?.instantiateViewController(withIdentifier: "CountryNameController") as! CountryNameController
        if let email = emailInput.text, !email.isEmpty,
           let password = passwordInput.text, !password.isEmpty, password.count >= 5, password.count <= 10 {
            navigationController?.show(nextPage, sender: nil)
            emailInput.text = ""
            passwordInput.text = ""
            labelTextField.text = ""
            labelTextField.textColor = .orange
               } else {
                   labelTextField.text = "Please fill the gaps fully and truely"
                   labelTextField.textColor = .red
               }
        }
    }
    


