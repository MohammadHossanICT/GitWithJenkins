//
//  FirstView.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by M A Hossan on 13/02/2023.
//

import SwiftUI

struct FirstView: View {

    @State var username: String = ""
    
    var body: some View {
        Spacer()
        NavigationView {
            VStack(alignment: .leading) {
                Text("Username")
                    .font(.callout)
                    .bold()
                TextField("Enter username...", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Login", role: .none, action: executeDelete)
            }.padding(20)
                .navigationTitle("Welcome to Log In ")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Button("Welcome to Login ") {
                            }
                        }
                    }
               }

        }
    }
    func executeDelete() {
            print("Now deleting…")
        }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
