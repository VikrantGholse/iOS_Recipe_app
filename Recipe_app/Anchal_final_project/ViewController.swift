//
//  ViewController.swift
//  Anchal_final_project
//
//  Created by Vikrant Gholse on 01/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.animationImages = arr
        img.animationRepeatCount = 0
        img.animationDuration = 3
        img.startAnimating()
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func theme(_ sender: UISwitch) {
        if sender.isOn {
               applyDarkMode()
           } else {
               applyLightMode()
           }
    }
    
    func applyDarkMode() {
        self.view.backgroundColor = .black
    }

    func applyLightMode() {
        self.view.backgroundColor = .darkGray
    }
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        if userName.text == "anchal" && password.text=="123"{
            
            performSegue(withIdentifier: "toMenu", sender: self)
            
        }
        else{
            let alert = UIAlertController(title: "Error", message: "User name or password is in incorrect", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .destructive, handler: nil))
            present(alert, animated: true)
        }
    }
    
    var arr :[UIImage] = [UIImage(named: "chkroll.jpeg")!,
                          UIImage(named: "mixveg.jpeg")!,
                          UIImage(named: "pizza.jpeg")!]
    
    @IBAction func forgotPass(_ sender: Any) {
        performSegue(withIdentifier: "pass", sender: self)
        
    }
}

