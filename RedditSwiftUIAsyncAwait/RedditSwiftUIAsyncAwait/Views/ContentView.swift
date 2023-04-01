//
//  ContentView.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var viewModel: FruitViewModel
    
    var body: some View {
        
        VStack {
            Text("Fruit List ")
                .font(.largeTitle)
            List {
                ForEach(viewModel.fruits) {
                    // custom cell
                    RowView(name: $0.name, genus: $0.genus)
                }
            }
        }
        .onAppear {
            Task {
                await viewModel.fetchData()
            }
        }
            
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
