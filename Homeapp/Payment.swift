//
//  Payment.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 23/06/1443 AH.
//

import SwiftUI

struct Payment: View {
    
//    @Environment(\.presentationMode) var presentationMode
//    @Binding var rootPresenting : Bool
    @State  var name: String = ""
    @State  var number: String = ""
    @State  var date: String = ""
    @State  var cvv: String = ""
    var info : info

    var body: some View {
        //NavigationView {
            VStack{
             ZStack{
                Image("Image5")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(height:328.0)
                //.padding(.top,-160)
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2197437286, green: 0.1490013897, blue: 0.1642106473, alpha: 1)) , Color(#colorLiteral(red: 0.2181376517, green: 0.1501809359, blue: 0.1646053195, alpha: 0.5378207782))]),
                    startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()

                 
                 Text("Payment")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.trailing,250)
                    .padding(.top,100)
                 
             }
               
                ZStack{
                    RoundedRectangle(cornerRadius:35)
                     .frame(height:700)
                     .foregroundColor(Color.white)
                    
                    ScrollView(showsIndicators: false){
                        VStack {
                            Group{
                                VStack(alignment: .leading){
                                    //VStack(alignment: .leading) {
                                        Text("Card Number:")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                        TextField("Ex: 2424 2424 2424 2424", text: $number)
                                            .cornerRadius(10)
                                            .frame(height: 40)
                                            .padding(.horizontal)
                                            .foregroundColor(Color.black)
                                            .border(Color.gray, width: 0.5)
                                    //}
                                    //VStack(alignment: .leading) {
                                        Text("Card Holder Name:")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                        TextField("Ex: Atheer Hassan", text: $name)
                                            .cornerRadius(10)
                                            .frame(height: 40)
                                            .padding(.horizontal)
                                            .foregroundColor(Color.black)
                                            .border(Color.gray, width: 0.5)
                                    //}
                                    
                                    
                                    HStack(spacing: 16) {
                                        VStack(alignment: .leading){
                                            Text("Expierd date:")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                            TextField("25/22", text: $date)
                                                .cornerRadius(10)
                                                .frame(height: 40)
                                                .padding(.horizontal)
                                                .foregroundColor(Color.black)
                                                .border(Color.gray, width: 0.5)
                                        }
                                        
                                        VStack(alignment: .leading) {
                                            Text("CVV:")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                            TextField("222", text: $cvv)
                                                .cornerRadius(10)
                                                .frame(height: 40)
                                                .padding(.horizontal)
                                                .foregroundColor(Color.black)
                                                .border(Color.gray, width: 0.5)
                                        }
                                    }
                                    
                                    
                                    
                                    ScrollView(.horizontal,showsIndicators: false){
                                        
                                        HStack(spacing:-30) {
                                            Image("card1")
                                                .resizable()
                                                .frame(width: 300, height: 200)
                                                .cornerRadius(8)
                                            
                                            Image("card2")
                                                .resizable()
                                                .frame(width: 300, height: 200)
                                                .cornerRadius(8)
                                        }.padding(.horizontal, -30)
                                    }
                                    NavigationLink (destination:done(), label: {
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 15)
                                                .frame(height: 50)
                                                .foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
                                                .padding(.horizontal, 16)
                                            Text("Confirm")
                                                .font(.title3.weight(.bold))
                                                .foregroundColor(.white)
                                                .onTapGesture {
                                                    subscriptionsss.append(self.info)
                                                        }
                                        }.padding(.top, -40)
                                    })
                                    
                                    
                                    
//                                    NavigationLink (destination:done(rootPresenting:$rootPresenting)){
                                        
//                                        ZStack{
//                                            RoundedRectangle(cornerRadius: 15)
//                                                .frame(height: 50)
//                                                .foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
//                                                .padding(.horizontal, 16)
//                                            Text("Confirm Payment")
//                                                .font(.title3.weight(.bold))
//                                                .foregroundColor(.white)
//
//                                        }.padding(.top, -40)
                                    }
                                }
                            }
                        }.padding()
                    }
                }.padding(.top,-70)
            }
        //}
        
    }


struct Payment_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
