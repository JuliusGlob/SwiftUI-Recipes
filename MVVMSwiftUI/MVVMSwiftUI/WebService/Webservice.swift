//
//  Webservice.swift
//  MVVMSwiftUI
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import Foundation
import SwiftUI


enum Network: Error {
    case badUrl
    case badRequest
}

class Webservice {
    
    func fetchPosts(completion: @escaping (Result<[Post], Network>) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            completion(.failure(Network.badUrl))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data, error == nil else {
                completion(.failure(Network.badRequest))
                return
            }
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            completion(.success(posts ?? []))

        }.resume()
                
    }
}
