//
//  InputError.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 15/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import Foundation

enum InputError: Error {
    case firstNameMissingError
    case lastNameMissingError
    case companyNameMissingError
    case streetAddressMissingError
    case cityMissingError
    case stateMissingError
    case zipCodeMissingError
}

