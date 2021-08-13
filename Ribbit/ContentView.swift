 //
 //  ContentView.swift
 //  Ribbit
 //
 //  Created by Liza Bipin on 05/11/20.
 //
 
 import SwiftUI
 
 struct ContentView: View {
    @ObservedObject var networkManger = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(networkManger.posts){ post in
                    PostView(post: post.data)
                }
            }
            .onAppear(perform: {
                self.networkManger.fetchdata()
                
            })
        }
       
    }
    
    
    
 }
 
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
 }
