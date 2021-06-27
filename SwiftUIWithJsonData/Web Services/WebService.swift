//
//  WebService.swift
//  SwiftUIWithJsonData
//
//  Created by Mohan Chandrasekar  on 2020-07-14.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation


class WebService {
    func getAllPost(completion: @escaping ([Post]?) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else{ return}
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }
    .resume()
    }
}

