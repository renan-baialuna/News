 //
//  ContentView.swift
//  Hacker News
//
//  Created by Renan Baialuna on 29/10/20.
//  Copyright © 2020 Renan Baialuna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetWorkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }.navigationBarTitle("Hacker news")
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
//let posts = [
//    Post(id: "1", Title: "Hello"),
//    Post(id: "2", Title: "Middle"),
//    Post(id: "3", Title: "End")
// ]
