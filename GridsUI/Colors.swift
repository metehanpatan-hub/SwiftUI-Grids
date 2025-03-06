//
//  Colors.swift
//  GridsUI
//
//  Created by Metehan Patan on 6.03.2025.
//
import SwiftUI
extension Color {
    static var random: Color {
        return Color(red: Double.random(in: 0...1),
                     green: Double.random(in: 0...1),
                     blue: Double.random(in: 0...1))
    }
}
