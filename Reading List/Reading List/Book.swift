//
//  Book.swift
//  Reading List
//
//  Created by William Chen on 8/20/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation

struct Book: Codable, Equatable {
    var title: String
    var reasonToRead: String
    var hasBeenRead: Bool = false
}

