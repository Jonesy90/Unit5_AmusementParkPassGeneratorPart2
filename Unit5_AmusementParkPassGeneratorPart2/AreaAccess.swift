//
//  AreaAccess.swift
//  Unit5_AmusementParkPassGeneratorPart2
//
//  Created by Michael Jones on 15/06/2019.
//  Copyright © 2019 Michael Jones. All rights reserved.
//

import Foundation

enum Area {
    case amusement
    case kitchen
    case rideControl
    case maintainance
    case office
}

protocol  AreaAcces {
    var amusementAreas: Bool { get }
    var kitchenAreas: Bool { get }
    var rideControlAreas: Bool { get }
    var maintainanceAreas: Bool { get }
    var officeAreas: Bool { get }
}

