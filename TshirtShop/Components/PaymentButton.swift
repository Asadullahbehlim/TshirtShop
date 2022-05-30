//
//  PaymentButton.swift
//  TshirtShop
//
//  Created by Asadullah Behlim on 30/05/22.
//

import SwiftUI

struct PaymentButton: View {
    @Environment(\.openURL) var openURL
    var body: some View {

        Button  (action: {
            openURL(URL(string: "https://bit.ly/service-charges")!)
            
        }, label: {
            Label ("Proceed With Paypal",systemImage: "creditcard.fill")
          //  UIApplication.shared.open(Url, options: [:], completionHandler: nil)
        
    }) .buttonStyle(.borderedProminent)
            .tint(.blue)
            .font(.title)
            .foregroundColor(.white)
            .buttonBorderShape(.capsule)
            
    }
        
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton()
         // .preferredColorScheme(.dark)
    }
}



