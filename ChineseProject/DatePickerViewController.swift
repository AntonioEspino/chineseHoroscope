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
    func datePickerValue (_ date: Date)
}

class DatePickerViewController: UIViewController  {
    
    //MARK: - Global var
    
    static let datePickerVCSegueIdentifier = "toDatePicker"
    var delegate: DatePickerDelegate?
    
    //MARK: - Outlets
    
    @IBOutlet var datePicker: UIDatePicker!
    
    //MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }    
    override func viewWillDisappear(_ animated: Bool) {
        delegate?.datePickerValue(datePicker.date)
    }
}
