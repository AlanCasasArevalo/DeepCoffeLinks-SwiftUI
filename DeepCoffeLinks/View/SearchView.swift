import SwiftUI

struct SearchView: View {
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        NavigationView {
            List {
                // List of coffees
                ForEach(coffees) { coffee in
                    NavigationLink (tag: coffee.id, selection: $appData.currentDetailPage) {
                        DetailView(coffee: coffee)
                    } label: {
                        HStack(spacing: 15) {
                            Image(coffee.productImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80)
                                .cornerRadius(0)
                            
                            VStack (alignment: .leading, spacing: 8) {
                                Text(coffee.title)
                                    .font(.body.bold())
                                    .foregroundColor(.primary)
                                Text(coffee.productPrice)
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Search")
        }
    }
    
    @ViewBuilder
    func DetailView(coffee: Coffee) -> some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                Image(coffee.productImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 280)
                    .cornerRadius(8)
                
                VStack (alignment: .leading, spacing: 12) {
                    Text(coffee.title)
                        .font(.title.bold())
                        .foregroundColor(.primary)
                    
                    Text(coffee.productPrice)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                                        
                    Text(coffee.description)
                        .multilineTextAlignment(.leading)
                    
                }
                .padding()

            }
        }
        .navigationTitle(coffee.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
