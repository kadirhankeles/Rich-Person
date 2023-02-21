//
//  ViewController.swift
//  Rich Person
//
//  Created by Kadirhan Keles on 21.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var richTableView: UITableView!
    
    var richPersonArray = [RichModel]()
    var chosenPerson : RichModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        richTableView.delegate = self
        richTableView.dataSource = self
        
        
        
        //Rich Person Objects
        
        let bernard = RichModel(imagePerson: UIImage(named: "kisi1")!, name: "Bernard Arnault", netWorth: "$211.6 B")
        let elon = RichModel(imagePerson: UIImage(named: "kisi2")!, name: "Elon Musk", netWorth: "$198.2 B")
        let jeff = RichModel(imagePerson: UIImage(named: "kisi3")!, name: "Jeff Bezos", netWorth: "$120.4 B")
        let larry = RichModel(imagePerson: UIImage(named: "kisi4")!, name: "Larry Ellison", netWorth: "$112.3 B")
        let warren = RichModel(imagePerson: UIImage(named: "kisi5")!, name: "Warren Buffett", netWorth: "$107.3 B")
        let bill = RichModel(imagePerson: UIImage(named: "kisi6")!, name: "Bill Gates", netWorth: "$107.0 B")
        
        richPersonArray = [bernard , elon , jeff , larry , warren , bill]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return richPersonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = richPersonArray[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenPerson = richPersonArray[indexPath.row]
        print(chosenPerson!.name)
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedPerson = chosenPerson
            
        }
    }
}

