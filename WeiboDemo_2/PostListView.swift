//
//  PostListView.swift
//  WeiboDemo_2
//
//  Created by Cheng Peng on 2020-09-16.
//  Copyright © 2020 Cheng Peng. All rights reserved.
//

import SwiftUI

struct PostListView: View {
    let category : PostListCategory
      
      var postList: PostList{
          switch category {
          case .recommend:
              return loadPostListDate("PostListData_recommend_1.json")
          case .hot:
              return loadPostListDate("PostListData_hot_1.json")
          }
      }

    var body: some View {
        List{
            ForEach(postList.list){ post in
                ZStack{
                    PostCell(post: post)
                    NavigationLink(destination: PostDetailView(post: post)){
                        EmptyView()
                    }
                    .hidden()
                }
                .listRowInsets(EdgeInsets())
            }
        }
        
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PostListView(category: .recommend)
            .navigationBarTitle("Title")
            .navigationBarHidden(true)
        }
    }
}
