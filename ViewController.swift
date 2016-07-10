//
//  ViewController.swift
//  SampleCustomTextField
//
//  Created by 矢野史洋 on 2016/07/10.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login() {
        resignFirstResponderAtControls()
        print("login")
    }
    
    //リターンキーが押された時に発火するdelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == emailField) {
            //レシーバーのViewを最初に応答するオブジェクトとして設定する
            passwordField?.becomeFirstResponder()
        } else {
            login()
        }
        return true
    }
    
    //タップイベントを検知する
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        resignFirstResponderAtControls()
    }
    
    private func resignFirstResponderAtControls() {
        //表示しているキーボードを隠す
        emailField?.resignFirstResponder()
        passwordField?.resignFirstResponder()
    }
}
