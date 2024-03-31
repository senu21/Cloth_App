import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State private var isLoggedIn = false

    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            if isLoggedIn {
                TabView {
                    HomePageView().environmentObject(cartManager)
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                        .tag(Tab.Home)

                    // Other tabs...
                    Text("Search View")
                        .tabItem {
                            Image(systemName: "magnifyingglass.circle")
                            Text("Search")
                        }
                        .tag(Tab.Search)
                    
                    Text("Notifications View")
                        .tabItem {
                            Image(systemName: "bell")
                            Text("Notifications")
                        }
                        .tag(Tab.Notifications)
                    
                    Text("Cart View")
                        .tabItem {
                            Image(systemName: "bag")
                            Text("Cart")
                        }
                        .tag(Tab.Cart)
                    
                    Text("Profile View")
                        .tabItem {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                        .tag(Tab.Profile)
                }
                .ignoresSafeArea(.keyboard, edges: .bottom)
            } else {
                LoginView(isLoggedIn: $isLoggedIn) // Pass isLoggedIn as a binding
            }
        }
    }
    
    enum Tab: String, CaseIterable {
        case Home
        case Search
        case Notifications
        case Cart
        case Profile
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CartManager())
    }
}
