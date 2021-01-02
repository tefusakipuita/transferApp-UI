//
//  ContentView.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    @ObservedObject var manager = UserManager()
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            Color.bgGradient
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                // MARK: - Top Nav
                TopNavView()
                    .padding(.top, 18)
                
                // MARK: - Title
                TitleView()
                    .padding(.top, -20)
                
                // MARK: - Hexagon
                HexagonView(manager: manager)
                    .padding(.vertical, 65)
                
                // MARK: - Send
                SendView()
                
                Spacer()
                
            } //: VStack
            
        } //: ZStack
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
