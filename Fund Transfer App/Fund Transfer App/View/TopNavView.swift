//
//  TopNavView.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

struct TopNavView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            
            // MARK: - Left
            VStack (alignment: .leading) {
                HStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 7, height: 7)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 7, height: 7)
                } //: HStack
                HStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 7, height: 7)
//                    Spacer()
                } //: HStack
            } //: VStack
            .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
            
            Spacer()
            
            // MARK: - Right
            ZStack (alignment: .topTrailing) {
                Image(systemName: "ellipsis.bubble")
                    .foregroundColor(.white)
                    .font(.system(size: 26))
                    .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
                
                Circle()
                    .fill(Color.sendGradient)
                    .frame(width: 14, height: 14)
                    .offset(x: 3, y: -3)
            } //: ZStack
            
        } //: HStack
        .padding(.horizontal, 26)
    }
}

struct TopNavView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
