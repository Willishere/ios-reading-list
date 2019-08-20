//
//  BookTableViewCell.swift
//  Reading List
//
//  Created by William Chen on 8/20/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookTitle: UILabel!
    var book: Book?
   weak var delegate: BookTableViewCellDelegate?
    
    func updateViews(){
        guard let book = book else { return }
        
        bookTitle.text = book.title
        
    }
 
    @IBAction func readOrNot(_ sender: UIButton) {
        BookTableViewCellDelegate.toggleHasBeenRead(sender.isEnabled)
        
    }
    
}
