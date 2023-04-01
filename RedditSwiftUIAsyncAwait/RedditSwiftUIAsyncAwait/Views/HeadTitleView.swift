//
//  HeadTitleView.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import SwiftUI

struct HeadTitleView: View {
    
    @EnvironmentObject var viewModel: FruitViewModel
    let name: String
    
    var body: some View {
        Text("Fruit Name:\(name)")
    }
}

//struct HeadTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeadTitleView()
//    }
//}
