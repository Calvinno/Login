//
//  ViewController.swift
//  Login
//
//  Created by Calvin Cantin on 18-09-10.
//  Copyright © 2018 Calvin Cantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToLandingSegue", sender: forgotUserNameButton)
    }
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToLandingSegue", sender: forgotPasswordButton)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUserNameButton
        {
            segue.destination.navigationItem.title = "Forgot username"
        }
        else if sender == forgotPasswordButton
        {
            segue.destination.navigationItem.title = "Forgot password"
        }
        else
        {
        segue.destination.navigationItem.title = userNameTextField.text
        }
    }

}

