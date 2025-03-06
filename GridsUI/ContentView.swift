//
//  ContentView.swift
//  GridsUI
//
//  Created by Metehan Patan on 6.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LazyVGrid(columns:[GridItem(.flexible())]){
            ForEach(MockData.colors, id: \.self) {
                RoundedRectangle(cornerRadius: 10)
                    .fill($0.gradient)
                    .frame(height: 100) 
            }
        }
    }
}

#Preview {
    ContentView()
}
