//
//  VIPBadge.swift
//  WeiboDemo_2
//
//  Created by Cheng Peng on 2020-09-14.
//  Copyright © 2020 Cheng Peng. All rights reserved.
//

import SwiftUI

struct VIPBadge: View {
    
    let vip : Bool
    
    var body: some View {
        Group{
            if vip
            {
              Text("V")
                  .bold()
                  .foregroundColor(Color.yellow)
                  .font(.system(size: 11))
                  .frame(width: 11, height: 11)
                  .background(Color.red)
                  .clipShape(Circle())
                  .overlay(
                      RoundedRectangle(cornerRadius: 7.5)
                          .stroke(Color.white, lineWidth: 1))
            }
        }
    }
}

struct VIPBadge_Previews: PreviewProvider {
    static var previews: some View {
        VIPBadge(vip: true)
    }
}
