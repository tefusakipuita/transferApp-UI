//
//  HexagonView.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

struct HexagonView: View {
    
    // MARK: - Property
    
    @ObservedObject var manager: UserManager
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Hexagon
            RoundedHexagon()
                .fill(Color.hexagonGradient)
                .frame(width: CGFloat.largeHexagonWidth, height: CGFloat.largeHexagonHeight)
                .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
            
            RoundedHexagon()
                .fill(Color.hexagonGradient)
                .frame(width: CGFloat.middleHexagonWidth, height: CGFloat.middleHexagonHeight)
                .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
            
            // MARK: - Center Arrow Button
            Button(action: {
                withAnimation {
                    manager.refreshUsers()
                }
            }, label: {
                ZStack {
                    RoundedHexagon()
                        .fill(Color.hexagonGradient)
                        .frame(width: CGFloat.smallHexagonWidth, height: CGFloat.smallHexagonHeight)
                        .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
                    
                    Image(systemName: "arrow.triangle.2.circlepath")
                        .foregroundColor(.white)
                        .opacity(0.7)
                        .font(.system(size: 24, weight: .semibold))
                        .rotationEffect(Angle(degrees: 130))
                        .rotationEffect(Angle(degrees: manager.isRefreshing ? 360 : 0))
                } //: ZStack
            }) //: Button
            
            // MARK: - User Circle
            ForEach(manager.users) { user in
                UserHexagon(manager: manager, user: user)
                    .scaleEffect(manager.isRefreshing ? 0.0 : 1.0)
                    .opacity(manager.isRefreshing ? 0 : 1)
                    .rotationEffect(Angle(degrees: manager.isRefreshing ? 0 : 720))
                    .offset(x: user.offsetX, y: user.offsetY)
                    .shadow(color: Color.hexagonShadow, radius: 16, x: 18, y: 12)
                    .onTapGesture {
                        withAnimation {
                            manager.selectUser(id: user.id)
                        }
                    } //: gesture
            } //: ForEach
            
        } //: ZStack
        .onAppear(perform: {
            withAnimation {
                manager.refreshUsers()
            }
        })
    }
}

// MARK: - Preview

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
