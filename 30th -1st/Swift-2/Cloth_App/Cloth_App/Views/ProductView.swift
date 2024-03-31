//
//  ProductView.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-27.
//

import SwiftUI

struct ProductView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20 )]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column, spacing: 20){
                    ForEach(productList, id: \.id){
                        product in ProductCardView(product: product)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ProductView()
        .environmentObject((CartManager()))
}
