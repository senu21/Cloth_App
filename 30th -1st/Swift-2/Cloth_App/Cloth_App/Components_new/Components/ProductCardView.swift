//
//  ProductCardView.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-26.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManger:CartManager
    var product:Product
    var body: some View {
        ZStack{
            Color("Secondary")
            
            ZStack(alignment: .bottomTrailing){
                    VStack(alignment: .leading){
                        Image(product.image)
                            .resizable()
                            .frame(width: 175, height: 160)
                            .cornerRadius(12)
                        
                        
                        Text(product.name)
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical,1)
                        
                        Text(product.size)
                            .foregroundColor(.gray)
                            .font(.caption)
                            .padding(.vertical, 0.5)
                        
                        Text("Rs. \(product.price)")
                            .foregroundColor(.black)
                            .bold()
                    }
                   
                    
                  
                    
                
                
                Button{
                    cartManger.addToCart(product: product)
                } label:{
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("primary"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                    
                }
            }
        }
        
        .frame(width: 200, height: 260)
        .cornerRadius(15)
    }
}


    struct ProductCardView_Previews: PreviewProvider{
        
        static var previews: some View {
            ProductCardView(product:productList[0])
                .environmentObject(CartManager())
        }
    }
        
    


