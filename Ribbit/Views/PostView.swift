//
//  PostView.swift
//  Ribbit
//
//  Created by Liza Bipin on 07/11/20.
//

import SwiftUI
import URLImage
struct PostView: View {

    let post: PostData
    
    var postImage: UIImageView? = nil
    
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(post.title)
                    .font(.headline)
                    .lineLimit(1)
                
                Group{
                    if post.url.contains("reddit"){
                        Text(post.selftext)
                            .lineLimit(2)
                    }
                    else{
                        Text("  ")
                            .lineLimit(2)
                    }
                }
                PostDataView(post: post, spaced: true)
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
            }
            
            if post.thumbnail != "self"{
                if let url = URL(string: post.thumbnail){
                    URLImage(url: url, content: {image in
                                image
                                    .frame(width: 55, height: 55, alignment: .center)
                                    .clipped()
                                    .cornerRadius(5.0)
                                    .aspectRatio(contentMode: .fill)
                                
                    })
                  
                       
                }
                
            
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: PostData.example)
    }
}
