//
//  DetailsViewController.swift
//  Rich Person
//
//  Created by Kadirhan Keles on 21.02.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personWorth: UILabel!
    
    @IBOutlet weak var personName: UILabel!
    
    
    //Seçilen kişinin verilerine erişmek için
    var selectedPerson : RichModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImage.image = selectedPerson?.imagePerson
        personWorth.text = selectedPerson?.name
        personName.text = selectedPerson?.netWorth
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
