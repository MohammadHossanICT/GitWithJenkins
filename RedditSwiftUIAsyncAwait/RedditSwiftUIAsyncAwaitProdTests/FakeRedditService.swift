//
//  FakeRedditService.swift
//  RedditSwiftUIAsyncAwaitProdTests
//
//  Created by Christian Quicano on 3/7/22.
//

import Foundation
@testable import RedditSwiftUIAsyncAwaitProd

class FakeRedditService: FruitService {
    
    typealias Model = RedditResponse
    var data: Data?
    var error: Error?
    
    override func getModel(from url: String) async throws -> Model {
        if let data = data {
            return try JSONDecoder().decode(Model.self, from: data)
        }
        throw error!
    }
    
}

