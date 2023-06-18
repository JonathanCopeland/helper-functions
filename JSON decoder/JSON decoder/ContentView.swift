//
//  ContentView.swift
//  JSON decoder
//
//  Created by Jonathan Copeland on 17/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    let artistAddress: User = Bundle.main.decode("addressData.json")

    
    
//    let blogPost: BlogPost = {
//        
//        // fetch the file
//        guard let url = Bundle.main.url(forResource: "myData", withExtension: "json") else {
//            fatalError("Failed to locate file.")
//        }
//        
//        // save the contents of the file
//        guard let data = try? Data(contentsOf: url) else {
//            fatalError("Failed to open file.")
//        }
//        
//        let decoder = JSONDecoder()
//        
//        // Save it into the Blogpost format
//        guard let data = try? decoder.decode(BlogPost.self, from: data) else {
//            fatalError("Failed to parse data.")
//        }
//        
//        print(data.title)
//        
//        return data
//    }()
    
//    let artistAddress: User = {
//        
//        // fetch the file
//        guard let url = Bundle.main.url(forResource: "addressData", withExtension: "json") else {
//            fatalError("Failed to locate file.")
//        }
//        
//        // save the contents of the file
//        guard let data = try? Data(contentsOf: url) else {
//            fatalError("Failed to open file.")
//        }
//        
//        let decoder = JSONDecoder()
//        
//        // Save it into the Blogpost format
//        guard let data = try? decoder.decode(User.self, from: data) else {
//            fatalError("Failed to parse data.")
//        }
//        
//        print(data.name)
//        
//        return data
//    }()
        
    
    var body: some View {
        VStack {
                    
            
            Text(artistAddress.name)
//            
            
            Button("Decode JSON") {
                
                let user = loadJson(fileName: "addressData")
                print(user?.name ?? "name")
            }
            
 
        }
    }
    
    
    func loadJson(fileName: String) -> User? {
        
        // fetch the file
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            return nil
        }
        
        // save the contents of the file
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        let decoder = JSONDecoder()

        // decode the contents of the file
        guard let user = try? decoder.decode(User.self, from: data) else {
            return nil
        }
        
        // return the decoded contents of the file
        return user
    }
    


    
}

#Preview {
    ContentView()
}
