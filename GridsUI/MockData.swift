//
//  MockData.swift
//  GridsUI
//
//  Created by Metehan Patan on 6.03.2025.
//
import SwiftUI

struct MockData{
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 {array.append(Color.random)}
    return array
    }
}
