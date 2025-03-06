//
//  ContentView.swift
//  GridsUI
//
//  Created by Metehan Patan on 6.03.2025.
//

import SwiftUI

struct ContentView: View {
    let columns = Array(repeating:GridItem(.flexible(), spacing:10), count:4)
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, pinnedViews: .sectionHeaders){
                Section{
                    ForEach(MockData.colors, id: \.self) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill($0.gradient)
                            .frame(height: 100)
                    }
                } header: {
                    Text("Favorites")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Section{
                    ForEach(MockData.colors, id: \.self) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill($0.gradient)
                            .frame(height: 100)
                    }
                } header: {
                    Text("Not Favorites")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
