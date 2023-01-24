import SwiftUI

struct ImageExplorerExample8: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(MoreImages.allCases, id: \.self) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .shadow(radius: 20)
                }
            }
            .padding()
        }
    }
}

struct ImageExplorerExample8_Previews: PreviewProvider {
    static var previews: some View {
        ImageExplorerExample8()
    }
}
