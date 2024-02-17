//
//  FeedbackViewController.swift
//  Anchal_final_project
//
//  Created by Vikrant Gholse on 03/11/23.
//

import UIKit

class FeedbackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        
//        let alert2 = UIAlertController(title: "Apologies", message: "Will improve the service", preferredStyle: .alert)
//        alert2.addAction(UIAlertAction(title: "OK", style: .cancel,handler: nil))
//        present(alert2, animated: true, completion: nil)
        
        let sed = sender.selectedSegmentIndex
        
        switch sed {

        case 0:
            let alert2 = UIAlertController(title: "Apologies", message: "Will improve the service", preferredStyle: .alert)
            alert2.addAction(UIAlertAction(title: "OK", style: .cancel,handler: nil))
            present(alert2, animated: true, completion: nil)
        case 1:
            let alert3 = UIAlertController(title: "Apologies", message: "Will improve the service", preferredStyle: .alert)
            alert3.addAction(UIAlertAction(title: "OK", style: .cancel,handler: nil))
            present(alert3, animated: true, completion: nil)
        case 2:
            let alert4 = UIAlertController(title: "Glad", message: "Happy to help", preferredStyle: .alert)
            alert4.addAction(UIAlertAction(title: "OK", style: .cancel,handler: nil))
            present(alert4, animated: true, completion: nil)
        case 3:
            let alert5 = UIAlertController(title: "Glad", message: "Happy to help", preferredStyle: .alert)
            alert5.addAction(UIAlertAction(title: "OK", style: .cancel,handler: nil))
            present(alert5, animated: true, completion: nil)
        case 4:
            let alert6 = UIAlertController(title: "Glad", message: "Happy to help", preferredStyle: .alert)
            alert6.addAction(UIAlertAction(title: "OK", style: .cancel,handler: nil))
            present(alert6, animated: true, completion: nil)
        default:
            break
        }
    }

    

}
