
import SwiftUI

struct ImageExplorerExample4: View {
    
    @State private var showName = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(ImageType.allCases, id: \.self) { image in
                    let name = image.rawValue
                    let niceName = name.replacingOccurrences(of: "img", with: "")
                    Image(name)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.25)
                        .scaledToFill()
                        .cornerRadius(20)
                        .overlay {
                            Text(showName ? niceName.capitalized : "")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                                .shadow(color: .white.opacity(0.7), radius: 5, x: 5, y: 5)
                        }
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 1.0)){
                                showName.toggle()
                            }
                        }
                }
            }
        }
        
    }
}

struct ImageExplorerExample4_Previews: PreviewProvider {
    static var previews: some View {
        ImageExplorerExample4()
    }
}
