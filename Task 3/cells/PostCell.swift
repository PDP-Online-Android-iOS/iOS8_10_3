//
//  PostCell.swift
//  Task 3
//
//  Created by Ogabek Matyakubov on 18/01/23.
//

import SwiftUI

struct PostCell: View {
    
    var post: Post!
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(post.title)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                    .lineLimit(1)
                
                Text(post.body)
                    .foregroundColor(.black)
                    .fontWeight(.none)
                    .font(.system(size: 16))
                    .lineLimit(3)
            }
            Spacer()
        }
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: Post(id: 1, title: "OgabekDev", body: "OgabekDev is a username of Ogabek Matyakubov.", userId: 1))
    }
}
