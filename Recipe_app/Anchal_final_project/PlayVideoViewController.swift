//
//  PlayVideoViewController.swift
//  Anchal_final_project
//
//  Created by Vikrant Gholse on 02/11/23.
//

import UIKit
import WebKit

class PlayVideoViewController: UIViewController {
    
    var recivelink : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint(recivelink)

    }
    
    @IBOutlet weak var videoViwe: WKWebView!
    
    @IBAction func playVideo(_ sender: UIButton) {
        
        let url = URL(string: recivelink)
                let request = URLRequest(url: url!)
                videoViwe.load(request)
    }
    
    @IBAction func feedbackBtn(_ sender: UIButton) {
        //performSegue(withIdentifier: "feed", sender: self)
        
        let alert = UIAlertController(title: "THANKS", message: "Happy to help", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
