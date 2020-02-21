//
//  ViewController.swift
//  ChineseProject
//
//  Created by user164220 on 20/02/2020.
//  Copyright © 2020 Antonio Espino. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController{
    
    
    //MARK: - Global Var
    
    var horoscopeSender = Horoscope.init(as: nil)    
    //MARK: - Actions
    
    @IBAction func ratButton(_ sender: UIButton) {
        segueInteraction(as: .rat)
    }
    @IBAction func oxButton(_ sender: UIButton) {
        segueInteraction(as: .ox)
    }
    @IBAction func tigerButton(_ sender: UIButton) {
        segueInteraction(as: .tiger)
    }
    @IBAction func rabbitButton(_ sender: UIButton) {
        segueInteraction(as: .rabbit)
    }
    @IBAction func dragonButton(_ sender: UIButton) {
        segueInteraction(as: .dragon)
    }
    @IBAction func snakeButton(_ sender: UIButton) {
        segueInteraction(as: .snake)
    }
    @IBAction func hoseButton(_ sender: UIButton) {
        segueInteraction(as: .horse)
    }
    @IBAction func goatButton(_ sender: UIButton) {
        segueInteraction(as: .goat)
    }
    @IBAction func monkeyButton(_ sender: UIButton) {
        segueInteraction(as: .monkey)
    }
    @IBAction func roosterButton(_ sender: UIButton) {
        segueInteraction(as: .rooster)
    }
    @IBAction func dogButton(_ sender: UIButton) {
        segueInteraction(as: .dog)
    }
    @IBAction func swineButton(_ sender: UIButton) {
        segueInteraction(as: .swine)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: - Navigation
    
    @IBAction func unwindToIntroduction(unwindSegue: UIStoryboardSegue) {
        let control = DatePickerViewController()
        control.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DatePickerViewController.datePickerVCSegueIdentifier  {
            let vc = segue.destination as! DatePickerViewController
            vc.delegate = self
        }else if segue.identifier == HoroscopeViewController.horoscopeVCSegueIdentifier {
            let vc = segue.destination as! HoroscopeViewController
            vc.horoscopereceived = horoscopeSender
        }
    }
    func segueInteraction (as symbol: Horoscope.Symbol){
        horoscopeSender.animalSymbol = symbol
        performSegue(withIdentifier: HoroscopeViewController.horoscopeVCSegueIdentifier, sender: nil)
    }
}
//MARK: - Delegate

extension InicioViewController: DatePickerDelegate {
    func datePickerValue(_ date: Date) {
        if horoscopeSender.typeForDate(date) != nil {
            horoscopeSender.animalSymbol = horoscopeSender.typeForDate(date)!
            segueInteraction(as: horoscopeSender.animalSymbol!)
        }
        
    }
}

