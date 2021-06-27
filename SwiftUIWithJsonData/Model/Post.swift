//
//  Post.swift
//  SwiftUIWithJsonData
//
//  Created by Mohan Chandrasekar  on 2020-07-14.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation

struct Post: Decodable , Identifiable{
    let id = UUID()
    let title: String
    let body: String
}
