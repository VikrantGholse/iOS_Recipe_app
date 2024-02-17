//
//  IndianViewController.swift
//  Anchal_final_project
//
//  Created by Vikrant Gholse on 02/11/23.
//

import UIKit


class IndianViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
   var filterDataImg:[String] = []
   var filterDataName:[String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isUserInteractionEnabled = false
        
        self.title = "Recipe"
        
        table.reloadData()
        
        table.dataSource = self
        table.delegate = self
                
    }
    var vlinks = ""
    func performseg() {
        performSegue(withIdentifier: "toplaybtn", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlayVideoViewController{
            destination.recivelink = vlinks
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filterDataImg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell",for:indexPath)as! CostumTableViewCell
        
        cell.dishImage.image = UIImage (named: filterDataImg[indexPath.row]+".jpeg")
        cell.dishName.text = filterDataName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedrow = filterDataName[indexPath.row]
        
        switch selectedrow{
            
        case "Paneer butter masala":
            vlinks = "https://youtu.be/U1LVDFwi8qI?si=tBGO2PbKAWZkBwk8"
        case "Mix veg":
            vlinks = "https://youtu.be/5Ju3abQS5jY?si=cxpSUahSrgWc2sXc"
        case "Palak Paneer":
            vlinks = "https://youtu.be/cRsAQeR5dbI?si=9rxihxSNycpNaD5f"
        case "Malai Kofta":
            vlinks = "https://youtu.be/h1NhmHj5Cjc?si=RwtHVAdZqmgpSnQS"
        case "Butter Chicken":
            vlinks = "https://youtu.be/JxSwBpEiYeQ?si=RnWxD-9JFdT8OvF9"
        case "Chicken Tikka":
            vlinks = "https://youtu.be/VhijkWkuSKo?si=lt707yamn2lTREGq"
        case "Hyderabadi Dum Biryani":
            vlinks = "https://youtu.be/aleED1mc5kI?si=TpACuX2kU-WGaSoo"
        case "Noodles":
            vlinks = "https://youtu.be/R4GAb4-1l4A?si=qfcTFkYI4X3VD-zX"
        case "Momos":
            vlinks = "https://youtu.be/fovrUHwf0e8?si=uRql4H2K2-cusfTq"
        case "Spring Roll":
            vlinks = "https://youtu.be/2Kp--pUv7l8?si=yt5GSIXQQ7tP_Tp8"
        case "Pizza":
            vlinks = "https://youtu.be/zAICu_dIlUs?si=PcTu-u1xghUEzIOE"
        case "Pasta":
            vlinks = "https://youtu.be/UI9Zacwl33Q?si=2kIQW98FP5Eo-xGG"
        case "Lasagna":
            vlinks = "https://youtu.be/LLWqK4cgki8?si=VibZs1UtO5EQiGnq"
        case "Crispy Calamari Ring":
            vlinks = "https://youtu.be/Ul5zC23_hpo?si=c_jR5jllcKd9CEHe"
        case "Quick Salted Pie":
            vlinks="https://youtu.be/2gyTqVQVVIc?si=50jnvBay0WvUShT1"
        case "Prawn Pie":
            vlinks = "https://youtu.be/82J-jtK3mR4?si=xOUUiFQLnI_6hWaQ"
        
        default:
            break
        }
        
        performseg()
        table.deselectRow(at: indexPath, animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
    
