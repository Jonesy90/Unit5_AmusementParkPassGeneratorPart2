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
    var dateOfBirth = ""
    var socialSecurityNumber = ""
    var projectNumber = ""
    var firstName = ""
    var lastName = ""
    var companyName = ""
    var city = ""
    var state = ""
    var zipCode = ""
    
    //UILabel
    @IBOutlet weak var fullNameLabel: UILabel!
    
    //UIImageView
    @IBOutlet weak var photoImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = firstName + " " + lastName
        
        
        //Assigning the image to the UIImageView.
        self.photoImage.image = UIImage(named: "FaceImageAsset.png")

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
