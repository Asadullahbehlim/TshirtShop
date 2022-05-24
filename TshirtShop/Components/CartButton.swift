//
//  CartButton.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 24/05/22.
//

import SwiftUI

struct CartButton: View {
    // MARK: - Property
     var numberOfProducts: Int
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .topTrailing)
        {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2.bold())
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(55)
                
                
                          
                
            }
        }
    }
        
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 2)
           // .preferredColorScheme(.dark)
    }
}
