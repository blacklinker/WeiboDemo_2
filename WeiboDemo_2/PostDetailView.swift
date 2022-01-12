//
//  PostDetailView.swift
//  WeiboDemo_2
//
//  Created by Cheng Peng on 2020-09-21.
//  Copyright © 2020 Cheng Peng. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    let post : Post
    
    var body: some View {
        List {
            PostCell(post: post)
                .listRowInsets(EdgeInsets())
            
            ForEach(1...10, id: \.self){
                i in Text("评论\(i)")
            }
        }
        .navigationBarTitle("详情", displayMode: .inline)
        
       
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: postList.list[0])
    }
}
