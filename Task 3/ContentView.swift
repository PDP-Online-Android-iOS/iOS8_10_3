//
//  ContentView.swift
//  Task 3
//
//  Created by Ogabek Matyakubov on 18/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                if viewModel.isLoading {
                    ProgressView()
                }
                
                List {
                    ForEach(viewModel.posts, id: \.id) { post in
                        PostCell(post: post)
                    }
                }.listStyle(PlainListStyle())
            }
            .navigationTitle("Posts")
        }.onAppear {
            viewModel.apiPostList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
