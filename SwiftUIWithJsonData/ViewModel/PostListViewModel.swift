//
//  PostListViewModel.swift
//  SwiftUIWithJsonData
//
//  Created by Mohan Chandrasekar  on 2020-07-14.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation

class PostListViewModel: ObservableObject {
    @Published var post =  [PostViewModel]()
    
    let webService = WebService()
    
    
    init() {
        
        webService.getAllPost { posts in
            
            if let posts = posts {
                self.post = posts.map(PostViewModel.init)
            }
        }
    }
}

struct PostViewModel {
    var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    var title: String{
        return  self.post.title
    }
    var description: String{
        return self.post.body
    }
    
    var id: UUID{
        return self.post.id
    }
    
}
