//
//  ViewController.swift
//  AppWorksSchool
//
//  Created by SurbineHuang on 12/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchAction(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0) {
            self.checkLabel.textColor = .darkGray
            self.checkTextField.isEnabled = false
            self.checkTextField.backgroundColor = .darkGray
        } else {
            self.checkLabel.textColor = .black
            self.checkTextField.isEnabled = true
            self.checkTextField.backgroundColor = .white
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        guard let account = self.accountTextField.text, !account .isEmpty else {
            self.accountAlert()
            return
        }
        guard let password = self.passwordTextField.text, !password.isEmpty else {
            self.passWordAlert()
            return
        }
        
        
        if (self.segmentedControl.selectedSegmentIndex == 0) {
            print("Log in")
//            let accountName = self.accountTextField.text
//            let password = self.passwordTextField.text
            
            if (account == "appworks_school@gmail.com") && (password == "1234" ) {
//                print("帳號密碼都正確")
            } else {
                self.loginFail()
                return
            }
            
        } else {
            print("Sign up")
            guard let check = self.checkTextField.text, !check.isEmpty else {
                self.check()
                return
            }
            
            if (password == check) {
//                print("密碼check都正確")
            } else {
                self.signupFail()
            }
        }
    }
    
    func accountAlert() {
        // 建立提示框
        let alertController = UIAlertController(title: "ERROR", message: "Account should not be empty.", preferredStyle: .alert)
        // 建立確認按鈕
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        // 顯示提示框
        self.present(alertController, animated: true, completion: nil)
    }
    
    func passWordAlert() {
        let alertController = UIAlertController(title: "ERROR", message: "Password should not be empty.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func check() {
        let alertController = UIAlertController(title: "ERROR", message: "Check Password should not be empty.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func signupFail() {
        let alertController = UIAlertController(title: "ERROR", message: "Signup fail", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func loginFail() {
        let alertController = UIAlertController(title: "ERROR", message: "Login fail", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)

    }
    
    
}
