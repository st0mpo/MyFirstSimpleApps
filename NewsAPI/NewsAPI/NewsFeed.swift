//
//  NewsFeed.swift
//  News API
//
//  Created by Александр Истомин on 09.02.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import Foundation


struct NewsFeed : Codable {
    
    var status : String = ""
    var totalResults : Int = 0
    var aticles : [Article]?
    
}
