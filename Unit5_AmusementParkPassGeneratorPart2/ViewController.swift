//
//  ViewController.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 12/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UITextFields & DatePicker
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    private var datePicker: UIDatePicker?
    
    
    
    //UIButtons
    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var vendorButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //When the user presses on the 'dateOfBirthTextField'. A DatePicker will appear.
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecongnizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        dateOfBirthTextField.inputView = datePicker
        
        
    }
    
    //will remove the datepicker once the user has finished.
    @objc func viewTapped(gestureRecongnizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //updates the input of the date in the text field and assigns a date format.
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        dateOfBirthTextField.text = dateFormatter.string(from: datePicker.date)
    }

    
    
    
    
    
    

    
    


}

