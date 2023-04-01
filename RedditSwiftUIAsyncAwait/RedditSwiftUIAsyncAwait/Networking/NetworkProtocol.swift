//
//  NetworkProtocol.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import Foundation

extension String: Error {}

protocol NetworkProtocol {
    associatedtype Model: Decodable
    func getModel(from url: String) async throws -> Model
}

extension NetworkProtocol {
    func getData(from url: String) async throws -> Data {
        
        guard let url = URL(string: url)
        else { throw "The URL could not be created" }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else { throw "The server responded with an error" }
        
        return data
    }
}
