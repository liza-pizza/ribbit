//
//  PostDataView.swift
//  Ribbit
//
//  Created by Liza Bipin on 07/11/20.
//

import SwiftUI

struct PostDataView: View {
    
    let post: PostData
    let spaced: Bool
    
    var sticky: some View {
        Group{
            Spacer()
            if post.stickied{
                Image(systemName: "pin.fill")
                    .foregroundColor(Color("PinColour"))
                    .rotationEffect(Angle(degrees: 45))
                if self.spaced {
                    Spacer()
                }
            }
        }
    }
    
    var body: some View {
        
        HStack{
            
            
            sticky
            
            Image(systemName: "arrow.up")
                .foregroundColor(.orange)
            Text(String(post.score))
                .foregroundColor(.orange)
            
            
            if self.spaced {
                Spacer()
            }
            
            
            Image(systemName: "bubble.left")
            Text(String(post.numComments))
            
            if self.spaced {
                Spacer()
            }
            
            Image(systemName: "clock")
            Text(Date.timeAgoDisplay(postTime: post.createdUTC))
           
            if self.spaced {
                Spacer()
            }
        }
        
        
        
        
    }
}

struct PostDataView_Previews: PreviewProvider {
    static var previews: some View {
        PostDataView(post: PostData.example, spaced: true)
    }
}
