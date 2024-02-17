//
//  MainMenu.swift
//  Anchal_final_project
//
//  Created by Vikrant Gholse on 01/11/23.
//

import UIKit
import AVFoundation

class MainMenu: UIViewController {
    
    var player:AVAudioPlayer=AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodSlideShow.animationImages = indian
        foodSlideShow.animationRepeatCount = 0
        foodSlideShow.animationDuration = 3
        foodSlideShow.startAnimating()
        
        do{
            let audiopath = Bundle.main.path(forResource: "food", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!)as URL)
        }
        catch{
            
        }
        
    }
    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.stop()
    }
    
    func cnfButton(str:String){
        
        let alert = UIAlertController(title: "Confirm!!", message: "Are you sure you want to eat \(str)?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "YES", style: .default, handler:{_ in self.performSegue(withIdentifier: "indian", sender: self)} ))
        alert.addAction(UIAlertAction(title: "NO", style: .destructive, handler: nil))
        present(alert, animated: true)
        
    }
    
     
    
    func ImageAni(arr:[UIImage])  {
        
        foodSlideShow.animationImages = arr
        foodSlideShow.animationRepeatCount = 0
        foodSlideShow.animationDuration = 6
        foodSlideShow.startAnimating()
    }
    
    var img:[String] = []
    var name:[String] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? IndianViewController{
            destination.filterDataImg = img
            destination.filterDataName = name
        }
    }
    
    
    
    @IBOutlet weak var foodSlideShow: UIImageView!
    @IBAction func segment(_ sender: UISegmentedControl) {
        
        let selectedSegmentIndex = sender.selectedSegmentIndex
        
        switch selectedSegmentIndex{
        case 0:
            ImageAni(arr:indian)
            cnfButton(str: "Indian")
            img = ["ind1","ind2","ind3","ind4","ind5","ind6","ind5"]
            name=["Paneer butter masala","Mix veg","Palak Paneer","Malai Kofta","Butter Chicken","Chicken Tikka","Hyderabadi Dum Biryani"]
            
        case 1:
            ImageAni(arr:chinese)
            cnfButton(str: "Chinese")
            img = ["chi1","chi2","chi3"]
            name = ["Noodles","Momos","Spring Roll"]

        case 2:
            ImageAni(arr:itlian)
            cnfButton(str: "Itlian")
            img = ["ita1","ita2","ita3"]
            name = ["Pizza","Pasta","Lasagna"]

        case 3:
            ImageAni(arr:continental)
            cnfButton(str: "Continental")
            img = ["con1","con2","con3"]
            name = ["Crispy Calamari Ring","Quick Salted Pie","Prawn Pie"]
        default:
            ImageAni(arr: indian)
            break
            
        }
    }
    
    var indian : [UIImage] = [UIImage(named: "i1.jpeg")!,
                              UIImage(named: "i2.jpeg")!,
                              UIImage(named: "i3.jpeg")!]
    var chinese : [UIImage] = [UIImage(named: "ch1.jpeg")!,
                              UIImage(named: "ch2.jpeg")!,
                              UIImage(named: "ch3.png")!]
    var itlian : [UIImage] = [UIImage(named: "it1.jpeg")!,
                              UIImage(named: "it2.jpeg")!,
                              UIImage(named: "it3.jpeg")!]
    var continental : [UIImage] = [UIImage(named: "c1.jpeg")!,
                              UIImage(named: "c2.jpeg")!,
                              UIImage(named: "c3.jpeg")!]

}
