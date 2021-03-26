//
//  Filtering.swift
//  NASATest
//
//  Created by Ömer Faruk on 14.02.2021.
//

import Foundation

class Filtering: Identifiable, ObservableObject {
    
    @Published var FHAZ = false
    @Published var RHAZ = false
    @Published var MAST = false
    @Published var CHEMCAM = false
    @Published var MAHLI = false
    @Published var MARDI = false
    @Published var NAVCAM = false
    @Published var PANCAM = false
    @Published var MINITES = false
    
    init() {
        print("Object created")
    }
    
    func Testing() {
        print("Test succesfull")
    }
}
