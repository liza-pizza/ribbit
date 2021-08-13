//
//  NetworkManager.swift
//  Ribbit
//
//  Created by Liza Bipin on 05/11/20.
//

import Foundation

class NetworkManager: ObservableObject{
    
    @Published var posts = [Post]()
    
    func fetchdata(){
        print("here")
        if let url = URL(string: "https://www.reddit.com/r/roundanimals/hot.json"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    
                    let decoder = JSONDecoder()
                  
                    if let safeData = data{
                        do{
                            let list = try decoder.decode(Listing.self, from: safeData)
                            
                            DispatchQueue.main.async {
                                self.posts = list.data.children
                              
                            }
                        }
                        catch{
                        
                            print(error)
                            
                        }
                        
                    }
                    
                    
                }
            }
            task.resume()
        }
        
    }
    
    
}
