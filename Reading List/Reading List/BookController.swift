//
//  BookController.swift
//  Reading List
//
//  Created by William Chen on 8/20/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation

class BookController {
    private(set) var books: [Book] = []
    
    private var persistentFileURL: URL? {
        let fileManager = FileManager.default
        guard let documents = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
          return documents.appendingPathComponent("ReadingList.plist")
}
    init(){
        loadFromPersistentStore()
    }
    @discardableResult func createBook(named name: String, reason reasonToRead: String, read hasBeenRead: Bool) -> Book {
        let book = Book(title: name, reasonToRead: reasonToRead, hasBeenRead: hasBeenRead)
        
    }
    func saveToPersistentStore() {
        guard let url = persistentFileURL else { return }
        
        do {
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(books)
            try data.write(to: url)
        } catch {
            print("Error saving stars data: \(error)")
        }
    }
    
    func loadFromPersistentStore() {
        let fileManager = FileManager.default
        guard let url = persistentFileURL, fileManager.fileExists(atPath: url.path) else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            books = try decoder.decode([Book].self, from: data)
        } catch {
            print("Error loading stars data: \(error)")
        }
    }

    
    
    
    
    
    
    
}


