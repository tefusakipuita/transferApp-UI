//
//  TitleView.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 12) {
            Text("Tap to Pay")
                .font(.system(size: 43, weight: .light, design: .serif))
                .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
            
            Text("One click to fund transfer")
                .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
        } //: VStack
        .foregroundColor(.white)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
