//
//  ProductDetailsView.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-27.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                            
                                .font(.title2 .bold())
                            
                            Spacer()
                            
                            Text("Rs.\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("Secondary"))
                                .cornerRadius(12)
                            
                            
                        }
                        .padding(.vertical)
                        
                        HStack {
                            HStack(spacing: 10){
                                ForEach(0..<5){index in Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                    
                                    .foregroundColor(.yellow)}
                            }
                        }
                        
                        Text("(4.6)")
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical)
                    HStack{
                        Button(action:{}, label:{
                            Image(systemName: "minus.square")
                        })
                        Text("1")
                        Button(action:{}, label:{
                            Image(systemName: "plus.square.fill")
                                .foregroundColor(Color("primary"))
                        })
                    }
                    
                    Text("Description")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text(product.description)
                    Text("Available Sizes: ")
                        .font(.title3)
                        .fontWeight(.medium)
                    Text(product.size)
                    Spacer()
                    
                   
                            
                            
                        }
                    }
                    
                }
            }
        
       
    
}

#Preview {
    ProductDetailsView(product: productList[4])
}


//struct ColorDotView: View{
  //  let color: Color
  //  var body: some View{
  //      color
 //           .frame(width: 25, height: 25)
  //          .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
 //   }
//}
