//
//  Results.swift
//  Hakc3r News
//
//  Created by Felinda Gracia Lubis on 6/29/20.
//  Copyright © 2020 Felinda Lubis. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id : String {
        return objectID
    }
    let objectID : String
    let title : String
    let points : Int
    let url : String?
    
}
