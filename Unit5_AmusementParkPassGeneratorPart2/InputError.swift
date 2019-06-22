//
//  InputError.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 15/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import Foundation

enum InputError: Error {
    case firstNameMissingError(description: String)
    case lastNameMissingError(description: String)
    case fullNameMissingError(description: String)
    
    case companyNameMissingError(description: String)
    case streetAddressMissingError(description: String)
    case cityMissingError(description: String)
    case stateMissingError(description: String)
    case zipCodeMissingError(description: String)
}

