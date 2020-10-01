//
//  Article.swift
//  News API
//
//  Created by Александр Истомин on 10.02.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import Foundation

struct Article : Codable {
    var author : String?
    var title : String?
    var description : String?
    var url : String?
    var urlToImage : String?
    var piblishedAt : String?
    var content : String?
}
