//
//  DatePickerViewController.swift
//  ChineseProject
//
//  Created by user164220 on 20/02/2020.
//  Copyright © 2020 Antonio Espino. All rights reserved.
//

import UIKit

import Foundation

protocol DatePickerDelegate {
    func datePickerValue (date: Date)
}

class DatePickerViewController: UIViewController  {
    var delegate: DatePickerDelegate?
    
    @IBOutlet var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }    
    override func viewWillDisappear(_ animated: Bool) {
        delegate?.datePickerValue(date: datePicker.date)
    }
}
