//
//  ForgotPassViewController.swift
//  Anchal_final_project
//
//  Created by Vikrant Gholse on 03/11/23.
//

import UIKit

class ForgotPassViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var mail: UITextField!
    @IBAction func getmail(_ sender: Any) {
        
       
        let alert1 = UIAlertController(title: "OK", message: "\(mail.text!)....\n You will get a mail shortly", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "Get mail", style: .default))
            present(alert1, animated: true)
        
    }
    
    
}
