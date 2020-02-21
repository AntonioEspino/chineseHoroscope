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
        descriptionHoroscopeReceived.text = horoscopereceived.animalSymbol.message
        affinityHoroscopeReceived.text = horoscopereceived.animalSymbol.compatibility
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
