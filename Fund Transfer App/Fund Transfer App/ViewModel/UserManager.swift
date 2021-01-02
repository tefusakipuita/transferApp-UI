//
//  UserManager.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

class UserManager: ObservableObject {
    
    // MARK: - Property
    
    @Published var users: [User] = []
    
    @Published var isRefreshing = false
    
    var selectedUserId = -1
    var refreshCount = -1
    
    
    // MARK: - Function
    
    // 送金するユーザーを選択
    func selectUser(id: Int) {
        if let i = users.firstIndex(where: { $0.id == id }) {
            users[i].selected.toggle()
            
            if let j = users.firstIndex(where: { $0.id == selectedUserId }) {
                users[j].selected.toggle()
            }
            
            selectedUserId = id
        }
    }
    
    // ユーザーのリフレッシュ
    func refreshUsers() {
        
        isRefreshing = true
        
        // refreshCount を更新
        refreshCount = (refreshCount + 1) % 3
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            // users配列を空にする
            self.users.removeAll()
            
            // users配列に新しいユーザーデータを入れる
            for i in Array(stride(from: self.refreshCount * 6, to: (self.refreshCount + 1) * 6, by: 1)) {
                self.users.append(Data.data[i])
            }
            
            withAnimation(.linear(duration: 0.7)) {
                self.isRefreshing = false
            }
//            self.isRefreshing = false
        }
    }
}
