//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Егор Шкарин on 14.06.2021.
//

import Foundation

struct GetCommnetResponse {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else {throw NetworkError.failInternetError}
        
        var comments = [Comment]()
        
        for dict in array {
            guard let comment = Comment(dictionary: dict) else {continue}
            comments.append(comment)
        }
        self.comments = comments
    }
}
