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

class Person {
    let personalType: PersonalType
    var firstName: String?
    var lastName: String?
    var dateOfBirth: String?
    var companyName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zipCode: String?
    
    var foodDiscountValue: Int
    var merchandiseDicountValue: Int
    
    init?(personalType: PersonalType, firstName: String?, lastName: String?, dateOfBirth: String?, companyName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
        
        self.personalType = personalType
        
        guard let firstName = firstName else {
            throw InputError.firstNameMissingError(description: "First name is missing")
        }
        
        guard let lastName = lastName else {
            throw InputError.lastNameMissingError(description: "Last name is missing")
        }
        
        var foodDiscount: Int {
            switch personalType {
            case .vipGuest : return Discounts.vipGuestFoodDiscount.discountAmount
            case .maintenanceEmployee : return Discounts.maintanceServiceFoodDiscount.discountAmount
            case .rideServiceEmployee : return Discounts.rideServiceFoodDiscount.discountAmount
            case .managerEmployee : return Discounts.managerFoodDiscount.discountAmount
            case .classicGuest : return 0
            case .freeChildGuest : return 0
            case .seasonPassGuest : return Discounts.seasonPassGuestFoodDiscount.discountAmount
            case .seniorGuest : return Discounts.seasonPassGuestFoodDiscount.discountAmount
            case .contractEmployee : return 0
            case .vendor : return 0
            case .foodServiceEmployee : return 0
            }
        }
        
        var merchandiseDiscount: Int {
            switch personalType {
            case .vipGuest : return Discounts.vipGuestMerchandiseDiscount.discountAmount
            case .maintenanceEmployee : return Discounts.maintanceServiceMerchandiseDiscount.discountAmount
            case .rideServiceEmployee : return Discounts.rideServiceMerchandiseDiscount.discountAmount
            case .managerEmployee : return Discounts.managerMerchandiseDiscount.discountAmount
            case .classicGuest : return 0
            case .freeChildGuest : return 0
            case .seasonPassGuest : return Discounts.seasonPassGuestMerchandiseDiscount.discountAmount
            case .seniorGuest : return Discounts.seniorGuestMerchandiseDiscount.discountAmount
            case .contractEmployee : return 0
            case .vendor : return 0
            case .foodServiceEmployee : return 0
            }
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.companyName = companyName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
        self.foodDiscountValue = foodDiscount
        self.merchandiseDicountValue = merchandiseDiscount
    }
    
}
