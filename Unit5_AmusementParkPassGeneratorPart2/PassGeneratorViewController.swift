//
//  PassGeneratorViewController.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 17/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import UIKit

class PassGeneratorViewController: UIViewController {
    
    //
    var firstNameString: String? = ""
    var lastNameString: String? = ""
    var dateOfBirthString: String? = ""
    
    var companyNameString: String? = ""
    var cityString: String? = ""
    var stateString: String? = ""
    var zipCodeString: String? = ""

    var socialSecurityNumberString: String? = ""
    var projectNumberString: String? = ""
    
    //UILabel
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var personalTypeLabel: UILabel!
    
    
    //UIImageView
    @IBOutlet weak var photoImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = firstNameString! + " " + lastNameString!
        
        
        //Assigning the image to the UIImageView.
        self.photoImage.image = UIImage(named: "FaceImageAsset.png")
        
    }
    
}
