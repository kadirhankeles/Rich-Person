//
//  RichModel.swift
//  Rich Person
//
//  Created by Kadirhan Keles on 21.02.2023.
//

import Foundation
import UIKit

class RichModel {
    var imagePerson : UIImage
    var name : String
    var netWorth : String
    
    init(imagePerson: UIImage, name: String, netWorth: String) {
        self.imagePerson = imagePerson
        self.name = name
        self.netWorth = netWorth
    }
}
