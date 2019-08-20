//
//  BookTableViewCellDelegate.swift
//  Reading List
//
//  Created by William Chen on 8/20/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation

protocol BookTableViewCellDelegate {
    func toggleHasBeenRead(for cell: BookTableViewCell)
}
