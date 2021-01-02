//
//  Extension.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI


extension Color {
    
    // MARK: - Single
    
    static let lightBg = Color("lightBg")
    static let darkBg = Color("darkBg")
    
    static let darkHexagon = Color("darkHexagon")
    static let lightHexagon = Color("lightHexagon")
    static let hexagonShadow = Color("hexagonShadow")
    
    static let buttonOrange = Color("buttonOrange")
    static let buttonYellow = Color("buttonYellow")
    
    
    // MARK: - Gradient
    
    static let bgGradient = LinearGradient(gradient: Gradient(colors: [Color.lightBg, Color.darkBg]), startPoint: .top, endPoint: .bottom)
    
    static let hexagonGradient = LinearGradient(gradient: Gradient(colors: [Color.lightHexagon, Color.darkHexagon]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    static let sendGradient = LinearGradient(gradient: Gradient(colors: [Color.buttonYellow, Color.buttonOrange]), startPoint: .topLeading, endPoint: .bottomTrailing)
}


extension UIScreen {
    
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
}


extension CGFloat {
    
    static let largeHexagonWidth = UIScreen.screenWidth - 120
    static let largeHexagonHeight = (UIScreen.screenWidth - 120) * 2 / pow(3, 0.5)
    
    static let middleHexagonWidth = UIScreen.screenWidth - 250
    static let middleHexagonHeight = (UIScreen.screenWidth - 250) * 2 / pow(3, 0.5)
    
    static let smallHexagonWidth = UIScreen.screenWidth - 340
    static let smallHexagonHeight = (UIScreen.screenWidth - 340) * 2 / pow(3, 0.5)
}
