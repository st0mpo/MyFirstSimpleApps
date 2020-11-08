//
//  Conversion.swift
//  Currency
//
//  Created by Александр Истомин on 26.10.2020.
//

import SwiftUI

struct Conversion: Decodable {
    var rates : [String : Double]
    var date : String
    var base : String
}
