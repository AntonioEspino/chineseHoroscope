//
//  HoroscopeViewController.swift
//  ChineseProject
//
//  Created by user164220 on 21/02/2020.
//  Copyright © 2020 Antonio Espino. All rights reserved.
//

import UIKit

class HoroscopeViewController: UIViewController {
    
    //MARK: - Global Var
    
    static let horoscopeVCSegueIdentifier = "toHoroscope"
    var horoscopereceived = Horoscope.init(as: nil)
    
    //MARK: - Outlets
    
    @IBOutlet weak var imageHoroscopeReceived: UIImageView!
    @IBOutlet var descriptionHoroscopeReceived: UILabel!
    @IBOutlet var affinityHoroscopeReceived: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if horoscopereceived.animalSymbol != nil{
            imageHoroscopeReceived.image = UIImage(named: horoscopereceived.animalSymbol?.asString ?? "<no_name>")
            descriptionHoroscopeReceived.text = horoscopereceived.animalSymbol?.message
            affinityHoroscopeReceived.text = horoscopereceived.animalSymbol?.compatibility           
        }
    }
}
