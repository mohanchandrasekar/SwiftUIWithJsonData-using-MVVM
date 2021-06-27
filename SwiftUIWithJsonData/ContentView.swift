//
//  ContentView.swift
//  SwiftUIWithJsonData
//
//  Created by Mohan Chandrasekar  on 2020-07-14.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import SwiftUI
import Combine


struct ContentView: View {
    
    @ObservedObject private var postListViewModel = PostListViewModel()
    
    var body: some View {
        NavigationView{
            List(self.postListViewModel.post, id: \.id) { post in
                Image("apple").resizable().frame(width: 72.0, height: 72.0)
                VStack(alignment: .center){
                    Text(post.title)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Text(post.description)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                }
            }.navigationBarTitle(Text("Categories"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
