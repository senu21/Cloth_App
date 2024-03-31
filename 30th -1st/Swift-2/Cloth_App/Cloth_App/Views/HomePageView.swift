import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.white.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack {
                        AppBar().environmentObject(cartManager)
                        SearchView()
                        ImageSlideView()
                        
                        productSection(title: "New Arrivals", products: productList)
                    }
                }
            }
        }
    }
    
    // Helper view to generate the product section
    @ViewBuilder
    private func productSection(title: String, products: [Product]) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Spacer()
                
                NavigationLink(destination:{
                    ProductView()
                }, label: {
                    Image(systemName: "circle.grid.2x2.fill")
                        .foregroundColor(Color("primary"))
                })
            }
            .padding([.horizontal, .top])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(products) { product in
                        NavigationLink(destination: ProductDetailsView(product: product)) {
                            ProductCardView(product: product)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .padding(.trailing)
                
                Text("Colombo, Sri Lanka")
                    .font(.title3)
                    .foregroundColor(.gray)
                
                Spacer()
                
                NavigationLink(destination: CartView().environmentObject(cartManager)) {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
            Text("Fashion Gallery")
                .font(.largeTitle.bold())
                .font(.largeTitle.bold())
                .foregroundColor(Color("primary"))
            
        }
        .padding()
    }
}


// Assuming CartButton is defined elsewhere in your project
