//
//  CustomCorner.swift
//  Juice
//
//  Created by Alexandr Istomin on 02.12.2020.
//

import SwiftUI

struct CustomCorner: Shape {
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
    
}
