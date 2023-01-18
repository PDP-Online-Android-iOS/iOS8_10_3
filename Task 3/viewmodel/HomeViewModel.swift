//
//  HomeViewModel.swift
//  Task 3
//
//  Created by Ogabek Matyakubov on 18/01/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var posts = [Post]()
    
    func apiPostList() {
        isLoading = true
        Network.get(url: Network.API_POST_LIST, params: Network.emptyParams(), handler: { response in
            self.isLoading = false
            switch response.result {
            case .success(let data):
                print(data)
                var posts = try! JSONDecoder().decode([Post].self, from: response.data!)
                self.posts = posts
            case .failure(let error):
                print(error)
                self.posts = [Post]()
            }
        })
    }
    
}
