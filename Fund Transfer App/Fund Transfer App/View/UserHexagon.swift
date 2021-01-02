//
//  UserCircle.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

struct UserHexagon: View {
    
    // MARK: - Property
    
    @ObservedObject var manager: UserManager
    
    var hexagonSize = UIScreen.screenWidth - 360
    var imageSize = UIScreen.screenWidth - 368
    
    var user: User
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            RoundedHexagon()
                .fill(Color.hexagonGradient)
                .frame(width: hexagonSize, height: hexagonSize * 2 / pow(3, 0.5))

            Image(user.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize * 2 / pow(3, 0.5))
                .clipShape(RoundedHexagon())
            
            ZStack {
                Circle()
                    .fill(Color.sendGradient)
                    .frame(width: 30, height: 30)
                
                Image(systemName: "checkmark")
                    .foregroundColor(.white)
            } //: ZStack
            .offset(x: 24, y: 18)
            .opacity(user.selected ? 1 : 0)
        } //: ZStack
    }
}

// MARK: - Preview

struct UserCircle_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
