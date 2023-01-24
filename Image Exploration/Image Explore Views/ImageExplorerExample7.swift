//
//  ImageExplorerExample7.swift
//  Image Exploration
//
//  Created by karlis.stekels on 24/01/2023.
//

import SwiftUI

struct ImageExplorerExample7: View {
    
    @State private var scaleToFit = true
    
    private let applePieURL: String = "https://www.sainsburysmagazine.co.uk/uploads/media/1800x1800/04/6624-Toffee-apple-pie.jpg?v=1-0"
    
    var body: some View {
        ImageFromUrl(
            url: applePieURL,
                     width: 300,
                     height: 300,
            contentMode: scaleToFit ? .fit : .fill,
                     cornerRadius: 20)
        .shadow(radius: 30)
        .padding()
        .onTapGesture {
            scaleToFit.toggle()
        }
    }
}

struct ImageFromUrl: View {
    
    let url: String
    let width: CGFloat
    let height: CGFloat
    let contentMode: ContentMode
    let cornerRadius: CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: url)) {
            phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .cornerRadius(cornerRadius)
                    .cornerRadius(cornerRadius)
                    .aspectRatio(contentMode: contentMode)
                    .frame(width: width, height: height)
                    
            case .failure:
                Image(systemName: "photo")
                    .imageScale(.large)
            @unknown default:
                EmptyView()
            }
        }

    }
}

struct ImageExplorerExample7_Previews: PreviewProvider {
    static var previews: some View {
        ImageExplorerExample7()
    }
}
