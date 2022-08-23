//
//  CartView.swift
//  Cart_Page
//
//  Created by cloud_vfx on 01/08/22.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var cartData = CartViewModel()
    
    var grayColor =  Color(red: 215/255, green: 217/255 , blue: 215/255)
    
    var body: some View {
        
        VStack(spacing: 15){
            // Bar back Button & bar text...
            HStack(spacing: 10){
                Button {
                    
                } label: {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 26, weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Text("My Cart")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
            }
            .padding()
            
            // Item Veiw...
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 10){
                    ForEach($cartData.items){ item in
                        
                        ItemView(item: item, items: $cartData.items)
                    }
                }
            }
            
            // Total price & Check Button...
            VStack(spacing: 10){
                
                HStack(spacing: 10){
                    
                    Text("Total")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    
                    Spacer(minLength: 0)
                    
                    Text(calculateTotalPrice())
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding([.horizontal])
                
                Button {
                    
                } label: {
                    Text("Check out")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical,15)
                        .frame(width: UIScreen.main.bounds.width - 40)
                        .background(
                            LinearGradient(gradient: .init(colors: [Color("lightblue"),Color("blue")]), startPoint: .leading, endPoint: .trailing)
                            // LinearGradient(colors:[Color("ligthblue"), Color("blue")], startPoint: .leading, endPoint: .trailing)
                        )
                        .cornerRadius(27)
                }.shadow(radius: 10)
            }
            .background(grayColor)
            
        }
    }
    
    // Calculate Total Price...
    func calculateTotalPrice()->String {
        var price : Float = 0
        
        cartData.items.forEach { (item) in
            price += Float(item.quantity) * item.price
        }
        return getPrice(value: price)
    }
}

