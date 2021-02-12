//
//  ZitatModel.swift
//  Zitate
//
//  Created by Eliane Egeli on 06.02.21.
//

import Foundation
class ZitatModel: ObservableObject {
    @Published var zitate = [Zitat]()
    init () {
        // Load Data
        self.zitate = DataService.getLocalData()
    }
}
