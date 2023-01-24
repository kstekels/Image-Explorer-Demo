//
//  ImageExplorerExample2.swift
//  Image Exploration
//
//  Created by karlis.stekels on 24/01/2023.
//

import SwiftUI

struct ImageExplorerExample2: View {
    @State private var scaleToFit = true
    
    var body: some View {
        Image(ImageType.imgLightening1.rawValue)
            .resizable()
            .aspectRatio(contentMode: scaleToFit ? .fit : .fill)
            .cornerRadius(20)
            .padding()
            .onTapGesture{
                scaleToFit.toggle()
            }
    }
    
    
}

struct ImageExplorerExample2_Previews: PreviewProvider {
    static var previews: some View {
        ImageExplorerExample2()
    }
}
