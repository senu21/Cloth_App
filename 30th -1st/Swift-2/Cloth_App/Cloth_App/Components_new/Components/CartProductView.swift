//
//  CartProductView.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-27.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager:CartManager
    var product: Product
    var body: some View {
        HStack(spacing:20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5){
                Text(product.name)
                    .bold()
                
                Text("Rs. \(product.price)")
                    .bold()
            }
            .padding()
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .background(Color("Secondary"))
            .cornerRadius(12)
            .frame(width: .infinity, alignment: .leading)
            .padding()
                    
                }
    
}

#Preview {
    CartProductView(product: productList[2])
        .environmentObject(CartManager())
}
