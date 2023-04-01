//
//  RowView.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import SwiftUI

struct RowView: View {
    
    @EnvironmentObject var viewModel: FruitViewModel
    
    let name: String
    let genus: String

    var body: some View {

        VStack(alignment: .leading) {
            HeadTitleView(name: name)
            Text("Genus: \(genus)")
            Spacer()
        }
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowView(viewModel: <#RedditViewModel#>, title: "title", comments: "comments", score: "score", urlImage: "")
//    }
//}
