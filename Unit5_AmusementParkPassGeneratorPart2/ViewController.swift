//
//  ViewController.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 12/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var firstNameText: String?
    var lastNameText: String?
    
    //UITextFields & DatePicker
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    private var datePicker: UIDatePicker?
    
    @IBOutlet weak var socialSecurityNumberTextField: UITextField!
    @IBOutlet weak var projectNumberTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var streetAddressTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    
    
    //UIButtons
    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var vendorButton: UIButton!
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    
    
    
    

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
    
    //MARK: - Segue Methods
    
    @IBAction func generatePassButtonPressed(_ sender: Any) {
        firstNameText = firstNameTextField.text!
        lastNameText = lastNameTextField.text!
        
        
        performSegue(withIdentifier: "generatePassSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passGeneraterViewController = segue.destination as!  PassGeneratorViewController
        passGeneraterViewController.firstName = self.firstNameText!
        passGeneraterViewController.lastName = self.lastNameText!
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //HELPER METHODS
    
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

