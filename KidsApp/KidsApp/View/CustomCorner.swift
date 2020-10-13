//
//  CustomCorner.swift
//  KidsApp
//
//  Created by Александр Истомин on 12.10.2020.
//

import SwiftUI

struct CustomCorner: Shape {
    var corner : UIRectCorner
    var size: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: size, height: size))
        
        return Path(path.cgPath)
    }
}
