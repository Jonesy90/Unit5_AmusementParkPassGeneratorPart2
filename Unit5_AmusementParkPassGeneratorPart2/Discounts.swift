//
//  Discounts.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 15/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import Foundation

protocol DiscountAccess {
    var hasDiscount: Bool { get }
}

enum Discounts {
    case vipGuestFoodDiscount
    case vipGuestMerchandiseDiscount
    case seasonPassGuestFoodDiscount, seasonPassGuestMerchandiseDiscount
    case seniorGuestFoodDiscount, seniorGuestMerchandiseDiscount
    
    case foodServiceFoodDiscount, maintanceServiceFoodDiscount, rideServiceFoodDiscount
    case foodServiceMerchandiseDiscount, maintanceServiceMerchandiseDiscount, managerMerchandiseDiscount, managerFoodDiscount, rideServiceMerchandiseDiscount
    
    
    var discountAmount: Int {
        switch self {
        case .vipGuestFoodDiscount, .seasonPassGuestFoodDiscount, .seniorGuestFoodDiscount, .seniorGuestMerchandiseDiscount : return 10
        case .vipGuestMerchandiseDiscount, .seasonPassGuestMerchandiseDiscount : return 20
        case .foodServiceMerchandiseDiscount, .rideServiceFoodDiscount, .maintanceServiceFoodDiscount : return 15
        default : return 25
        }
    }
    
}







