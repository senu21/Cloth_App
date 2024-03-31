import SwiftUI

struct SignUpView: View {
    @Binding var isSignedUp: Bool
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var appearAnimation = false
    @Environment(\.presentationMode) var presentationMode // Environment variable to dismiss the view
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.6), Color.blue.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Sign Up")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .scaleEffect(appearAnimation ? 1 : 0.6)
                    .animation(.easeOut(duration: 0.5), value: appearAnimation)
                
                // Username field
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .scaleEffect(appearAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 0.8), value: appearAnimation)
                
                // Email field
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .scaleEffect(appearAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 1.1), value: appearAnimation)
                
                // Password field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .scaleEffect(appearAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 1.4), value: appearAnimation)
                
                // Confirm Password field
                SecureField("Confirm Password", text: $confirmPassword)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .scaleEffect(appearAnimation ? 1 : 0.5)
                    .animation(.easeOut(duration: 1.7), value: appearAnimation)
                
                // Sign Up button
                Button("Sign Up") {
                    // Perform sign up logic here
                    isSignedUp = true
                    // Dismiss the view after sign up
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                .scaleEffect(appearAnimation ? 1 : 0.5)
                .animation(.easeOut(duration: 2.0), value: appearAnimation)
                
                // Navigation link back to LoginView
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Back to Login")
                        .foregroundColor(.white)
                }
            }
            .padding()
            .onAppear {
                self.appearAnimation = true
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(isSignedUp: .constant(false))
    }
}
