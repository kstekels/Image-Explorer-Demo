//
//  ImageExplorerExample5.swift
//  Image Exploration
//
//  Created by karlis.stekels on 24/01/2023.
//

import SwiftUI

struct ImageExplorerExample5: View {
    let appleURL = "https://ichef.bbci.co.uk/news/976/cpsprodpb/9E86/production/_109228504_apples1.jpg"
    var body: some View {
        AsyncImage(url: URL(string: appleURL))
    }
}

struct ImageExplorerExample5_Previews: PreviewProvider {
    static var previews: some View {
        ImageExplorerExample5()
    }
}
