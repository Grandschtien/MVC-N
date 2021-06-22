//
//  CommentNetworkSrvice.swift
//  MVC-N
//
//  Created by Егор Шкарин on 14.06.2021.
//

import Foundation


class CommentNetworkService {
    private init() {}
    
    static func getCommnets(completion: @escaping (GetCommnetResponse)->()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else {
            return
        }
        NetworkService.shared.getData(url: url) { json in
            do{
                let response = try GetCommnetResponse(json: json)
                completion(response)
            }catch {
                print(error)
            }
        }
    }
}
