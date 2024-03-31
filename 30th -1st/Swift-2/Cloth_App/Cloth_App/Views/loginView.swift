import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var appearAnimation = false
    @State private var isSignUpActive = false // State to control navigation to sign up view
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.purple.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                    .scaleEffect(appearAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 0.5), value: appearAnimation)
                
                // Username field
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .scaleEffect(appearAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 0.8), value: appearAnimation)
                
                // Password field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .scaleEffect(appearAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 1.1), value: appearAnimation)
                
                // Login button
                Button("Login") {
                    isLoggedIn = true
                }
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .scaleEffect(appearAnimation ? 1 : 0.5)
                .animation(.easeOut(duration: 1.4), value: appearAnimation)
                
                // Sign up link
                Button(action: {
                    isSignUpActive = true
                }) {
                    Text("Don't have an account? Sign Up")
                        .foregroundColor(.white)
                }
                .sheet(isPresented: $isSignUpActive) {
                    // Present sign up view
                    SignUpView(isSignedUp: $isSignUpActive)
                }
            }
            .padding()
            .foregroundColor(.black)
            .onAppear {
                self.appearAnimation = true
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLoggedIn: .constant(false))
    }
}
