//
//  User.swift
//  Fund Transfer App
//
//  Created by 中筋淳朗 on 2020/12/08.
//

import SwiftUI

struct User: Identifiable {
    
    var id: Int
    var imageName: String
    var offsetX: CGFloat
    var offsetY: CGFloat
    
    var selected = false
}
