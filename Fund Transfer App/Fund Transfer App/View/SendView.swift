//
//  SendView.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

struct SendView: View {
    
    // MARK: - Property
    
    @State var value = "30"
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 0) {
            
            // MARK: - text
            Text("I want to fund transfer")
                .font(.system(size: 20, weight: .light, design: .serif))
                .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
                .padding(.bottom, 10)
            
            // MARK: - Pay Text Field
            HStack (alignment: .bottom, spacing: 10) {
                Text("$")
                    .font(.system(size: 30, design: .serif))
                    .padding(.bottom, 2)
                
                TextField("", text: $value)
                    .frame(width: 100, height: 50)
                    .font(.system(size: 50, design: .serif))
            } //: HStack
            
            // MARK: - Dash Border
            DashBorderShape()
                .stroke(style: StrokeStyle(lineCap: .round, dash: [3, 3]))
                .fill(Color.white.opacity(0.25))
                .frame(width: UIScreen.screenWidth / 2 + 30, height: 5)
                .padding(.top, 2)
            
            // MARK: - Send Button
            Button(action: {}, label: {
                ZStack {
                    Capsule()
                        .fill(Color.sendGradient)
                        .frame(width: 130, height: 60)
                    
                    Text("Send")
                        .font(.system(size: 24, weight: .semibold, design: .serif))
                } //: ZStack
            }) //: Button
            .padding(.top, 26)
            
        } //: VStack
        .foregroundColor(.white)
    }
}

// MARK: - Preview

struct SendView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
