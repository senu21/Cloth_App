//
//  CartView.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-27.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager:CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){
                    product in CartProductView(product: product)
                }
                HStack{
                    Text("Your Total  is ")
                    Spacer()
                    Text("\(cartManager.total).00")
                        .bold()
                }
                .padding()
            }else{
                
                Text("Your Cart is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
