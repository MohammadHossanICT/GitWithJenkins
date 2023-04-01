//
//  RedditSwiftUIAsyncAwaitApp.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import SwiftUI

@main
struct RedditSwiftUIAsyncAwaitApp: App {
    
   @StateObject private var viewModel = FruitViewModel()
    
    var body: some Scene {
        WindowGroup {
         //  FirstView()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
