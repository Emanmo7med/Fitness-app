//
//  gym.swift
//  Homeapp
//
//  Created by EMAN MOHAMMED on 25/01/2022.
//

import SwiftUI

struct gym: View {
    
 //   @Binding var rootPresenting : Bool
    var info : info
    var body: some View {
        
        VStack{
            ZStack{
                // header
                Image(info.image)
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(height:328.0)
                    .ignoresSafeArea()
                
                
            }
            
            
            
            //Services and Picker
            
            ZStack(){
                RoundedRectangle(cornerRadius: 35)
                    .frame(maxHeight: .infinity)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                
                    VStack{
                        ScrollView(showsIndicators: false){
                        VStack{
                            HStack{
                                Text(info.name)
                                    .font(.title2.weight(.bold))
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(.gray)
                                    HStack{
                                        Image(systemName: "star.fill")
                                        Text (info.rating)
                                    }.foregroundColor(.white)
                                }
                            }.padding()
                            
                            HStack{
                                Image(systemName: "mappin.circle.fill")
                                Text(info.Location)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                            .font(.subheadline.weight(.bold))
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 1, trailing: 0))
                            HStack{
                                Image(systemName: "clock.fill")
                                Text("Working time")
                                Text(info.workingTime)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                            .font(.subheadline.weight(.bold))
                            .padding(.horizontal,16)
                            Divider()
                                .padding(.horizontal,16)
                            
                            Text("The facilities:")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title3)
                                .padding(.horizontal,16)
                            
                            ScrollView(.horizontal, showsIndicators: true) {
                                HStack(spacing:-20){
                                    
                                    Image("background")
                                        .resizable(resizingMode: .stretch)
                                        .cornerRadius(10)
                                        .frame(width: 120, height: 120)
                                        .padding(.horizontal)
                                        
                                    Image("background")
                                        .resizable(resizingMode: .stretch)
                                        .cornerRadius(10)
                                        .frame(width: 120, height: 120)
                                        .padding(.horizontal)
                                    
                                    Image("background")
                                        .resizable(resizingMode: .stretch)
                                        .cornerRadius(10)
                                        .frame(width: 120, height: 120)
                                        .padding(.horizontal)
                                    
                                }
                            }
                            
                        }
                        VStack{
                            Text("Subscription")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title3)
                                .padding(.horizontal,16)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(height: 230)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 2)
                                    .padding(16)
                                VStack{
                                    HStack{
                                        Circle()
                                            .strokeBorder(.gray,lineWidth: 4)
                                            .frame(width: 40, height: 40)
                                            .background(Circle().foregroundColor(.white))
                                        Text(info.nameStbscription)
                                            .font(.title2)
                                        
                                    }
                                    Divider()
                                        .padding(.horizontal,16)
                                    VStack{
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.system(size: 16))
                                                .foregroundColor(.black)
                                        }
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.system(size: 16))
                                                .foregroundColor(.black)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.system(size: 16))
                                                .foregroundColor(.gray)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.system(size: 16))
                                                .foregroundColor(.gray)
                                        }
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.horizontal,36)
                                    HStack{
                                        Text("SR")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        Text(info.price)
                                            .font(.title.weight(.bold))
                                            .foregroundColor(.black)
                                        Text(info.Type_price)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                            NavigationLink(destination:subscription(info:info)){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 15)
                                        .frame(height: 50)
                                        .foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
                                        .padding(.horizontal, 16)
                                    Text("Continue")
                                        .font(.title3.weight(.bold))
                                        .foregroundColor(.white)
                                    
                                }
                            }
                        }
                    }.padding(.bottom, 20)
                }
            }.padding(.top, -170)
        }
    }
}

struct gym_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
