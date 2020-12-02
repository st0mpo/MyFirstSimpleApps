//
//  TabViewModel.swift
//  Juice
//
//  Created by Alexandr Istomin on 29.11.2020.
//

import SwiftUI

class TabViewModel: ObservableObject {
    @Published var selectedItem : Item!
    @Published var isDetail = false
}

