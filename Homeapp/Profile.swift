//
//  Profile.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 23/06/1443 AH.
//

import SwiftUI

struct Profile: View {
    //@Binding var rootPresenting : Bool

    var body: some View {
        //ScrollView {
            VStack{
                ZStack{
                    Image("Image5")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(height:328.0)
                    //.padding(.top,-160)
                    LinearGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2197437286, green: 0.1490013897, blue: 0.1642106473, alpha: 1)) , Color(#colorLiteral(red: 0.2181376517, green: 0.1501809359, blue: 0.1646053195, alpha: 0.5378207782))]),
                        startPoint: .top, endPoint: .bottom)
                    HStack{
                        Image("profile image")
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255), lineWidth: 5))
                            .padding(.horizontal,24)
                        VStack(alignment: .leading){
                            Text("Hello, Ann")
                                .font(.title2.weight(.bold))
                                .padding(.vertical,8)
                            Text("You have training ,Lower body trainingg at 09:00 am")
                        }.foregroundColor(.white)
                    }.padding(.horizontal,24)
                }.ignoresSafeArea()
                ZStack{
                    RoundedRectangle(cornerRadius: 35)
                        .frame(height: 700)
                        .foregroundColor(.white)
                        .padding(.top, -30)
                    VStack(alignment: .leading){
                        Text("Your Information")
                            .font(.title3)
                            .padding(.horizontal,16)
                        HStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(Color(red: 247 / 255, green: 247 / 255, blue: 247 / 255))
                                VStack{
                                    Text("Weight")
                                        .font(.caption)
                                    Text("66")
                                        .font(.title.weight(.bold))
                                    Text("kg")
                                        .font(.caption)
                                }.foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(Color(red: 247 / 255, green: 247 / 255, blue: 247 / 255))
                                VStack{
                                    Text("Height")
                                        .font(.caption)
                                    Text("166")
                                        .font(.title.weight(.bold))
                                    Text("cm")
                                        .font(.caption)
                                }.foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
                            }
                            ZStack{
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(Color(red: 247 / 255, green: 247 / 255, blue: 247 / 255))
                                VStack{
                                    Text("BMI")
                                        .font(.caption)
                                    Text("12")
                                        .font(.title.weight(.bold))
                                    Text("kg/m²")
                                        .font(.caption)
                                }.foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
                            }
                        }
                        .padding(.horizontal)
                        Text("Your Current Subscriptions")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3)
                            .padding(.horizontal,16)
                            .padding(.top, 24)

                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                //For result in information {
                                infoView(info: information[0])
                                infoView(info: information[1])

                                //}
                            }
                        }
                        Spacer()
                    }

                }
                .padding(.top, -80)

            }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
