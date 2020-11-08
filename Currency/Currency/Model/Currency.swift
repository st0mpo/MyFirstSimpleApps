//
//  Currency.swift
//  Currency
//
//  Created by Александр Истомин on 26.10.2020.
//

import SwiftUI

struct Currency: Identifiable {

    var id = UUID().uuidString
    var currencyName : String
    var currencyValue : Double
        
    }

var currecnies = ["USD", "AUD", "EUR", "INR", "JPY"]
