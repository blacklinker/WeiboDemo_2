//
//  HomeView.swift
//  WeiboDemo_2
//
//  Created by Cheng Peng on 2020-09-23.
//  Copyright © 2020 Cheng Peng. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    var body: some View {
        NavigationView{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 0){
                    PostListView(category: .recommend)
                                .frame(width: UIScreen.main.bounds.width)
                    PostListView(category: .hot)
                                .frame(width: UIScreen.main.bounds.width)
                           }
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading: HomeNavigationBar(leftPercent: 0))
                .navigationBarTitle("首页", displayMode: .inline)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}
