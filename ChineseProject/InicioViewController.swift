//
//  ViewController.swift
//  ChineseProject
//
//  Created by user164220 on 20/02/2020.
//  Copyright © 2020 Antonio Espino. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController{
    
    var datePicker = Date.init()
    @IBAction func didTapInDiscoverYourSign(_ sender: UIButton) {
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
        }
    }
    
}
extension InicioViewController: DatePickerDelegate {
    func datePickerValue(date: Date) {
        datePicker = date
        //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }
}

