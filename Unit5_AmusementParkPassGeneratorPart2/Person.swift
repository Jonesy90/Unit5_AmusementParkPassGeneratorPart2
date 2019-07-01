//
//  Person.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 15/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import Foundation

enum PersonalType {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case seasonPassGuest
    case seniorGuest
    
    case foodServiceEmployee
    case rideServiceEmployee
    case maintenanceEmployee
    case managerEmployee
    case contractEmployee
    
    case vendor
}

//Guests
class Guest: AreaAcces {
    var amusementAreas: Bool = true
    var kitchenAreas: Bool = false
    var rideControlAreas: Bool = false
    var maintainanceAreas: Bool = false
    var officeAreas: Bool = false
}

class FreeChildGuest: Guest {
    
}

class SeasonPassGuest: Guest {
    
}

class SeniorGuest: Guest {
    
}






//Employees
class Employee: AreaAcces {
    var firstNameString: String
    var lastNameString: String
    var streetAddressString: String
    var cityString: String
    var stateString: String
    var zipCodeString: String
    var socialSecurityNumberString: String
    var dateOfBirthString: String
    
    var amusementAreas: Bool = true
    var kitchenAreas: Bool = false
    var rideControlAreas: Bool = false
    var maintainanceAreas: Bool = false
    var officeAreas: Bool = false
    
    init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String, socialSecurityNumber: String, dateOfBirth: String) {
        firstNameString = firstName
        lastNameString = lastName
        streetAddressString = streetAddress
        cityString = city
        stateString = state
        zipCodeString = zipCode
        socialSecurityNumberString = socialSecurityNumber
        dateOfBirthString = dateOfBirth
    }
    
    
}

class FoodServiceEmployee: Employee {
    override init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String, socialSecurityNumber: String, dateOfBirth: String) {
        super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, socialSecurityNumber: socialSecurityNumber, dateOfBirth: dateOfBirth)
        kitchenAreas = true
    }
    
}

class RideServiceEmployee: Employee {
    override init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String, socialSecurityNumber: String, dateOfBirth: String) {
        super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, socialSecurityNumber: socialSecurityNumber, dateOfBirth: dateOfBirth)
        rideControlAreas = true
    }
}

class MaintenanceEmployee: Employee {
    override init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String, socialSecurityNumber: String, dateOfBirth: String) {
        super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, socialSecurityNumber: socialSecurityNumber, dateOfBirth: dateOfBirth)
        maintainanceAreas = true
    }
}

class ManagerEmployee: Employee {
    override init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String, socialSecurityNumber: String, dateOfBirth: String) {
        super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, socialSecurityNumber: socialSecurityNumber, dateOfBirth: dateOfBirth)
        kitchenAreas = true
        rideControlAreas = true
        maintainanceAreas = true
        officeAreas = true
    }
}

class ContractEmployee: Employee {
    
}

//Vendors

