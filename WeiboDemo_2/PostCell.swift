//
//  PostCell.swift
//  WeiboDemo_2
//
//  Created by Cheng Peng on 2020-09-14.
//  Copyright © 2020 Cheng Peng. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    let post : Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                post.avatarImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        VIPBadge(vip: post.vip).offset(x: 16, y : 16)
                )
                
                VStack(alignment: .leading, spacing: 5){
                    Text(post.name)
                        .font(Font.system(size: 19))
                        .foregroundColor(Color(red: 242/255, green: 99/255, blue: 4/255))
                        .lineLimit(1)
                    Text(post.date)
                        .font(.system(size : 11))
                }
                
                Spacer()
                
                Button(action: {
                    print("Click follow button")
                }){
                    Text("关注")
                        .font(.system(size: 14))
                        .frame(width: 50, height: 26)
                        .overlay(
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(Color.orange, lineWidth: 1)
                    )
                }
                .buttonStyle(BorderlessButtonStyle())
            }
            Text(post.text)
                .font(.system(size: 17))
            if !post.images.isEmpty{
                PostImageCell(images: post.images, width: UIScreen.main.bounds.width - 30)
            }
            Divider()
            
            HStack(spacing: 0){
                Spacer()
                PostCellToolbarButton(
                    image: "message",
                    text: post.commentCountText,
                    color: .black,
                    action: {print("评论")})
                Spacer()
                PostCellToolbarButton(
                image: "heart",
                text: post.likeCountText,
                color: .black,
                action: {print("点赞")})
                Spacer()
            }
            Rectangle()
                .padding(.horizontal, -15)
                .frame(height: 10)
            .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
        }
        .padding(.horizontal, 15)
        .padding(.top, 15)
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: postList.list[1] )
    }
}
