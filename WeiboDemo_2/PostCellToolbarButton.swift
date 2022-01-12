//
//  PostCellToolbarButton.swift
//  WeiboDemo_2
//
//  Created by Cheng Peng on 2020-09-15.
//  Copyright © 2020 Cheng Peng. All rights reserved.
//

import SwiftUI

struct PostCellToolbarButton: View {
    let image : String
    let text: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            HStack(spacing: 5){
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                Text(text)
                    .font(.system(size: 15))
            }
        }
        .foregroundColor(color)
        .buttonStyle(BorderlessButtonStyle())
    }
}

struct PostCellToolbarButton_Previews: PreviewProvider {
    static var previews: some View {
        PostCellToolbarButton(image: "heart", text: "点赞", color: .red, action: {print("点赞")})
    }
}
