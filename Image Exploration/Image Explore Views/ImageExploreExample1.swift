import SwiftUI

struct ImageExploreExample1: View {
    
    @State private var scaleToFit = true
    
    var body: some View {
        
        if scaleToFit {
            Image(imgLightening1)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }
        } else {
            Image(imgNature)
                .resizable()
                .scaledToFill()
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }
        }
    }
}

struct ImageExploreExample1_Previews: PreviewProvider {
    static var previews: some View {
        ImageExploreExample1()
    }
}
