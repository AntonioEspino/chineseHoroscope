//
//  HoroscopeViewController.swift
//  ChineseProject
//
//  Created by user164220 on 21/02/2020.
//  Copyright © 2020 Antonio Espino. All rights reserved.
//

import UIKit

class HoroscopeViewController: UIViewController {
    
    static let horoscopeVCSegueIdentifier = "toHoroscope"
    var horoscopereceived = Horoscope.init(dateStart: Date.init(), dateEnd: Date.init(), symbol: .tiger)
    
    @IBOutlet var imageHoroscopeReceived: UIView!
    @IBOutlet var descriptionHoroscopeReceived: UILabel!
    @IBOutlet var affinityHoroscopeReceived: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageHoroscopeReceived.accessibilityIdentifier = horoscopereceived.animalSymbol.asString
        print(horoscopereceived.animalSymbol.asString)
        descriptionHoroscopeReceived.text = horoscopereceived.animalSymbol.message
        affinityHoroscopeReceived.text = horoscopereceived.animalSymbol.compatibility
    }
}
