//
//  CartButton.swift
//  Cloth_App
//
//  Created by NIBM-LAB04-PC03 on 2024-03-27.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .padding(5)
            if numberOfProducts > 0{
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
                
                
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
