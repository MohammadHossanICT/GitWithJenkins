//
//  RedditViewModel.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import Foundation

@MainActor
class FruitViewModel: ObservableObject {
    
    @Published private(set) var fruits = [Fruits]()
    
    private var fruitService: FruitService
    
    init(fruitService: FruitService = FruitService()) {
        self.fruitService = fruitService
    }
    
    // Swift 5.5
    func fetchData() async {
        let url = NetworkURLs.urlBase
        do {
            let response = try await fruitService.getModel(from: url)
            let fruits = response
            self.fruits = fruits
            
        } catch (let error) {
            print(error)
        }
    }
}
