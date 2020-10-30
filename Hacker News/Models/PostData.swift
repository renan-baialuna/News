//
//  PostData.swift
//  Hacker News
//
//  Created by Renan Baialuna on 30/10/20.
//  Copyright © 2020 Renan Baialuna. All rights reserved.
//

import Foundation


struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
