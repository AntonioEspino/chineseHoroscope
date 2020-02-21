//
//  ViewController.swift
//  ChineseProject
//
//  Created by user164220 on 20/02/2020.
//  Copyright © 2020 Antonio Espino. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController{
    
   
    
    var horoscopeSender = Horoscope.init(dateStart: Date.init(), dateEnd: Date.init(), symbol: .tiger)
    
    
    @IBAction func ratButton(_ sender: UIButton) {
        segueInteraction(symbol: .rat)
    }
    @IBAction func oxButton(_ sender: UIButton) {
        segueInteraction(symbol: .ox)
    }
    @IBAction func tigerButton(_ sender: UIButton) {
        segueInteraction(symbol: .tiger)
    }
    @IBAction func rabbitButton(_ sender: UIButton) {
        segueInteraction(symbol: .rabbit)
    }
    @IBAction func dragonButton(_ sender: UIButton) {
        segueInteraction(symbol: .dragon)
    }
    @IBAction func snakeButton(_ sender: UIButton) {
        segueInteraction(symbol: .snake)
    }
    @IBAction func hoseButton(_ sender: UIButton) {
        segueInteraction(symbol: .horse)
    }
    @IBAction func goatButton(_ sender: UIButton) {
        segueInteraction(symbol: .goat)
    }
    @IBAction func monkeyButton(_ sender: UIButton) {
        segueInteraction(symbol: .monkey)
    }
    @IBAction func roosterButton(_ sender: UIButton) {
        segueInteraction(symbol: .rooster)
    }
    @IBAction func dogButton(_ sender: UIButton) {
        segueInteraction(symbol: .dog)
    }
    @IBAction func swineButton(_ sender: UIButton) {
        segueInteraction(symbol: .swine)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func unwindToIntroduction(unwindSegue: UIStoryboardSegue) {
        let control = DatePickerViewController()
        control.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDatePicker" {
            let vc = segue.destination as! DatePickerViewController
            vc.delegate = self
        }else if segue.identifier == "toHoroscope" {
            let vc = segue.destination as! HoroscopeViewController
            vc.horoscopereceived = horoscopeSender
        }
    }
    func segueInteraction (symbol: Horoscope.Symbol){
        horoscopeSender.animalSymbol = symbol
        performSegue(withIdentifier: HoroscopeViewController.horoscopeVCSegueIdentifier, sender: nil)
    }
}


extension InicioViewController: DatePickerDelegate {
    func datePickerValue(date: Date) {
        if horoscopeSender.typeForDate(date:date) != nil {
            horoscopeSender.animalSymbol = horoscopeSender.typeForDate(date:date)!
        segueInteraction(symbol: horoscopeSender.animalSymbol)
        }
        
    }
}

