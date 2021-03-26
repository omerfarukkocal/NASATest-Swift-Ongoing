//
//  ContentCell.swift
//  NASATest
//
//  Created by Ömer Faruk on 14.02.2021.
//

import SwiftUI

struct ContentCell: View {
    
    let content: Content
    
    var body: some View {
        
        VStack {
        Image("1")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .background(Color.gray)
            .cornerRadius(12.0)
            
            Text(content.rover_name.capitalized)
            .frame(width: 80, height: 30, alignment: .center)
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(12.0)
            
        }.shadow(color: .gray, radius: 3, x: 0, y: 0)
        .padding()
    }
}

struct ContentCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentCell(content: MOCK_CONTENT[0])
    }
}
