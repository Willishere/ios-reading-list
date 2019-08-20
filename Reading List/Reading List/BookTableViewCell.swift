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
    @IBOutlet weak var readButton: UIButton!
    var book: Book?
    weak var delegate: BookTableViewCellDelegate?
    
    func updateViews(){
        guard let book = book else { return }
        
        bookTitle.text = book.title
        
    }
 
    @IBAction func readOrNot(_ sender: UIButton) {
        let image = UIImage(named: "checked")
        readButton.setImage(image, for: .normal)
        
        
    }
    
}
