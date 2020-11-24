//
//  CustomCorner.swift
//  Salad
//
//  Created by Alexandr Istomin on 24.11.2020.
//

import SwiftUI

struct CustomCorner: Shape {
   
    var corners: UIRectCorner

    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
