//
//  ViewController.swift
//  [iOS] TextField
//
//  Created by 유현이 on 2022/10/26.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        setup()
    }
    
    func setup() {
        view.backgroundColor = UIColor.lightGray
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "이메일 주소를 입력하세요."
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if Int(string) != nil {
            return false
        } else {
            guard let text = textField.text else { return true }
            let newLength = text.count + string.count - range.length
            return newLength <= 10
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            textField.placeholder = "Type Something!"
            return false
        } else {
            return true
        }
    }
    

    
    
}

