//
//  ContentView.swift
//  Hakc3r News
//
//  Created by Felinda Gracia Lubis on 6/29/20.
//  Copyright © 2020 Felinda Lubis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List (networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Hakc3r News")
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

//let posts = [
////    Post(id: "1", title: "Hello"),
////    Post(id: "2", title: "Felinda"),
////    Post(id: "3", title: "You can do it!")
//]


