//
//  offers.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 23/06/1443 AH.
//

import SwiftUI

struct offers: View {
    var body: some View {
        VStack{
            Text("Offers")
                .font(.title.bold())
                .padding()
            Divider()
                .padding(.bottom)
//            ZStack(){
//                RoundedRectangle(cornerRadius: 35)
//                    .frame(height: 650)
//                    .foregroundColor(.white)
//                    .padding(.top, -80)
//                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        VStack{
                            VStack(){
                                VStack(alignment: .leading){
                                    ZStack(alignment: .topTrailing){
                                        Image("5")
                                            .resizable(resizingMode: .stretch)
                                            .frame(width: 370, height: 180)
                                            .cornerRadius(10.0)
                                        VStack(alignment: .trailing){
                                            Text("- 12 %")
                                                .frame(width: 50.0, height: 30.0, alignment: .center)
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.trailing)
                                                .background(.gray.opacity(0.5))
                                                .cornerRadius(8.0)
                                            Spacer()
                                            
                                            HStack(){
                                                Image(systemName:"location.circle.fill").foregroundColor(.white)
                                                Text("KSA - jeddah")
                                                    .fontWeight(.black)
                                                    .foregroundColor(Color.white)
                                                    .font(.footnote)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: 250.0, height: 50.0, alignment: .leading)
                                                //                        .padding(.bottom, -80.0)
                                                Spacer()
                                                
                                                
                                                
                                            }
                                            .frame( maxWidth: .infinity)
                                            .padding(.horizontal,1)
                                            
                                        }
                                    }
                                }
                                VStack(alignment: .leading){
                                    HStack(alignment: .top, spacing:160){
                                        Text("Fitness Time")
                                            .frame(width: 150, height: 30)
                                            .font(.title3)
                                            .padding(.leading, -15.0)
                                        //                        .multilineTextAlignment(.leading)
                                        
                                        
                                        HStack(alignment: .center, spacing:-2){ Image(systemName:"star.fill").foregroundColor(.white)
                                            
                                            Text("4.7")
                                                .frame(width: 30, height: 20)
                                        }
                                        
                                        .frame(width: 50, height: 25)
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        //                      .multilineTextAlignment(.trailing)
                                        .background(.gray)
                                        .cornerRadius(10.0)
                                        
                                        
                                    }
                                    .padding(.bottom, 50)
                                    //                .multilineTextAlignment(.trailing)
                                    VStack{
                                        Text("1500 SR")
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color(red: 0.44313725490196076, green: 0.6901960784313725, blue: 0.6470588235294118))
                                            .padding(.bottom, -10.0)
                                        ZStack(){
                                            Text("2000 SR")
                                            //                    .multilineTextAlignment(.leading)
                                                .frame(width: 70.0, height: 30.0, alignment: .center)
                                                .foregroundColor(Color(red: 0.5450980392156862, green: 0.5803921568627451, blue: 0.6980392156862745))
                                                .multilineTextAlignment(.trailing)
                                            //                          .background(.gray.opacity(0.3))
                                                .cornerRadius(8.0)
                                            
                                            Divider()
                                                .frame(width: 70.0, height: 2.0)
                                                .background(Color(red: 0.5450980392156862, green: 0.5803921568627451, blue: 0.6980392156862745))
                                                .padding(.bottom, -9.0)
                                            
                                            
                                            
                                        }
                                        .padding(.bottom, 13.0)
                                    }
                                    .padding(.top, -50.0)
                                    .frame(width: 70.0)
                                    
                                    
                                }
                                
                            }
                            .frame(width: 370.0, height: 290.0)
                            //            .border(Color.gray, width: 0.5)
                            
                            .foregroundColor(.black)
                            .background(.gray.opacity(0.1))
                            .cornerRadius(10.0)
                            VStack(){
                                VStack(alignment: .leading){
                                    ZStack(alignment: .topTrailing){
                                        Image("6")
                                            .resizable(resizingMode: .stretch)
                                            .frame(width: 370, height: 180)
                                            .cornerRadius(10.0)
                                        VStack(alignment: .trailing){
                                            Text("- 12 %")
                                                .frame(width: 50.0, height: 30.0, alignment: .center)
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.trailing)
                                                .background(.gray.opacity(0.5))
                                                .cornerRadius(8.0)
                                            Spacer()
                                            
                                            HStack(){
                                                Image(systemName:"location.circle.fill").foregroundColor(.white)
                                                Text("KSA - jeddah")
                                                    .fontWeight(.black)
                                                    .foregroundColor(Color.white)
                                                    .font(.footnote)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: 250.0, height: 50.0, alignment: .leading)
                                                //                        .padding(.bottom, -80.0)
                                                Spacer()
                                                
                                                
                                                
                                            }
                                            .frame( maxWidth: .infinity)
                                            .padding(.horizontal,1)
                                            
                                        }
                                    }
                                }
                                VStack(alignment: .leading){
                                    HStack(alignment: .top, spacing:160){
                                        Text("Ahmad Ali")
                                            .frame(width: 150, height: 30)
                                            .font(.title3)
                                            .padding(.leading, -15.0)
                                        //                        .multilineTextAlignment(.leading)
                                        
                                        
                                        HStack(alignment: .center, spacing:-2){ Image(systemName:"star.fill").foregroundColor(.white)
                                            
                                            Text("4.7")
                                                .frame(width: 30, height: 20)
                                        }
                                        
                                        .frame(width: 50, height: 25)
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        //                      .multilineTextAlignment(.trailing)
                                        .background(.gray)
                                        .cornerRadius(10.0)
                                        
                                        
                                    }
                                    .padding(.bottom, 50)
                                    //                .multilineTextAlignment(.trailing)
                                    VStack{
                                        Text("1500 SR")
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color(red: 0.44313725490196076, green: 0.6901960784313725, blue: 0.6470588235294118))
                                            .padding(.bottom, -10.0)
                                        ZStack(){
                                            Text("2000 SR")
                                            //                    .multilineTextAlignment(.leading)
                                                .frame(width: 70.0, height: 30.0, alignment: .center)
                                                .foregroundColor(Color(red: 0.5450980392156862, green: 0.5803921568627451, blue: 0.6980392156862745))
                                                .multilineTextAlignment(.trailing)
                                            //                          .background(.gray.opacity(0.3))
                                                .cornerRadius(8.0)
                                            
                                            Divider()
                                                .frame(width: 70.0, height: 2.0)
                                                .background(Color(red: 0.5450980392156862, green: 0.5803921568627451, blue: 0.6980392156862745))
                                                .padding(.bottom, -9.0)
                                            
                                            
                                            
                                        }
                                        .padding(.bottom, 13.0)
                                    }
                                    .padding(.top, -50.0)
                                    .frame(width: 70.0)
                                    
                                    
                                }
                                
                            }
                            .frame(width: 370.0, height: 290.0)
                            //            .border(Color.gray, width: 0.5)
                            
                            .foregroundColor(.black)
                            .background(.gray.opacity(0.1))
                            .cornerRadius(10.0)
                            
                        }
                    }
                }
            Spacer()
            
        }
        }
    }
//}

struct offers_Previews: PreviewProvider {
    static var previews: some View {
        offers()
    }
}
