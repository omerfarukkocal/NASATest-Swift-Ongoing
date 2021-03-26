//
//  CuriosityView.swift
//  NASATest
//
//  Created by Ömer Faruk on 12.02.2021.
//

import SwiftUI

let baseUrl = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY&page=1"

struct CuriosityView: View {
    
    
    func testFunc() {
        print("testFunc works")
    }
    
    private let gridItems = [GridItem(.flexible())]
//    @ObservedObject var viewModel = ContentViewModel(photos: .init().self)
//    var photos = Photo(fromURL: URL(string: baseUrl)!
    
//    @ObservedObject var viewModel = ContentViewModel(baseUrl)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 20) {
                ForEach(0..<5) {_ in
                    ContentCell(content: MOCK_CONTENT[0])
                        .onTapGesture {
                            print("ontap")
                        }
                }
            }
        }
    }
}

struct CuriosityView_Previews: PreviewProvider {
    static var previews: some View {
        CuriosityView()
    }
}
