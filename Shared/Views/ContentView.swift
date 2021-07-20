//
//  ContentView.swift
//  Shared
//
//  Created by Luka Vujnovac on 02.07.2021..
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkMenager = NetworkMenager()
    
    var body: some View {
        
        NavigationView {
            List(networkMenager.posts) { post in 
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkMenager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hello2"),
//    Post(id: "3", title: "Hello3")
//] 

