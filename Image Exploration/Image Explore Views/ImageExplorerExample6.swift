//
//  ImageExplorerExample6.swift
//  Image Exploration
//
//  Created by karlis.stekels on 24/01/2023.
//

import SwiftUI

struct ImageExplorerExample6: View {
    let appleURL = "https://ichef.bbci.co.uk/news/976/cpsprodpb/9E86/production/_109228504_apples1.jpg"
    var body: some View {
        AsyncImage(url: URL(string: appleURL)) {
            phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    
            case .failure:
                Image(systemName: "photo")
                    .imageScale(.large)
            @unknown default:
                EmptyView()
            }
        }
    }
    
}

struct ImageExplorerExample6_Previews: PreviewProvider {
    static var previews: some View {
        ImageExplorerExample6()
    }
}
