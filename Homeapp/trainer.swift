//
//  trainer.swift
//  Homeapp
//
//  Created by EMAN MOHAMMED on 25/01/2022.
//

import SwiftUI

struct trainer: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Image("6")
                    .resizable()
                ZStack(){
                    RoundedRectangle(cornerRadius: 35)
                        .frame(height: 1300)
                        .foregroundColor(.white)
                        .padding(.top, -80)
                        .ignoresSafeArea()
                    VStack{
                        VStack{
                            HStack{
                                Text("Ahmad Ali")
                                    .font(.title2.weight(.bold))
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(.gray)
                                    HStack(){
                                        Image(systemName:"star.fill")
                                        Text("4.7")
                                        
                                        
                                    }
                                    .foregroundColor(.white)
                                }
                                
                            } .padding()
                            
                            HStack(){
                                Image(systemName:"mappin.circle.fill")
                                Text("kazi Deiry, Taiger Pass,Chittagong")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                            .font(.subheadline.weight(.bold))
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 1, trailing: 0))
                            HStack(){
                                Image(systemName:"clock.fill")
                                Text("Working Today")
                                Text("10:00 AM - 12:00 PM")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                            .font(.subheadline.weight(.bold))
                            .padding(.horizontal,16)
                            Divider()
                                .padding(.horizontal,16)
                            Text("About Me")
                                .font(.title3)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 300.0)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu fermentum ligula, non dignissim lorem. Cras eleifend lacus ut eros dignissim pharetra ac eu tortor. Cras hendrerit ligula eget    more…")
                                .font(.footnote)
                            .padding(.vertical, -2.0)
                       
                        
                            Text("Classes")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title3)
                                .padding(.horizontal,16)
                            
                            ScrollView(.horizontal, showsIndicators: true) {
                                HStack(spacing:-20) {
                                    VStack{
                                        Image("1")
                                            .resizable(resizingMode: .stretch)
                                            .frame(width: 120, height: 120)
                                            .padding([.top, .leading, .trailing])
                                        Text("Cardio")
                                            .font(.body)
                                    }
                                    VStack{
                                        Image("2")
                                            .resizable()
                                            .frame(width: 120, height: 120)
                                            .padding([.top, .leading, .trailing])
                                        Text("Weight Lifting")
                                    }
                                    VStack{
                                        Image("3")
                                            .resizable()
                                            .frame(width: 120, height: 120)
                                            .padding([.top, .leading, .trailing])
                                        Text("Yoga")
                                    }}
                                .padding( .top ,-15.0)
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
                                        Text("Basic")
                                            .font(.title2)
                                        
                                    }
                                    Divider()
                                        .foregroundColor(.gray)
                                        .padding(.horizontal,16)
                                   
                                    VStack{
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.title3.weight(.bold))
                                                .foregroundColor(.blue)
                                        }
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.title3.weight(.bold))
                                                .foregroundColor(.blue)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.title3)
                                                .foregroundColor(.red)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.title3)
                                                .foregroundColor(.red)
                                        } }.frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.horizontal,36)
                                    HStack{
                                        Text("SR")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        Text("123")
                                            .font(.title.weight(.bold))
                                            .foregroundColor(.black)
                                        Text("/month")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
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
                                        Text("Standered")
                                            .font(.title2)
                                        
                                    }
                                    Divider()
                                        .padding(.horizontal,16)
                                    VStack{
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.title3.weight(.bold))
                                                .foregroundColor(.blue)
                                        }
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.title3.weight(.bold))
                                                .foregroundColor(.blue)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.title3)
                                                .foregroundColor(.red)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.title3)
                                                .foregroundColor(.red)
                                        }
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.horizontal,36)
                                    HStack{
                                        Text("SR")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        Text("229")
                                            .font(.title.weight(.bold))
                                            .foregroundColor(.black)
                                        Text("/month")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
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
                                        Text("Premuim")
                                            .font(.title2)
                                        
                                    }
                                    Divider()
                                        .padding(.horizontal,16)
                                    VStack{
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.title3.weight(.bold))
                                                .foregroundColor(.blue)
                                        }
                                        HStack{
                                            Image(systemName: "checkmark")
                                            Text("Lorem text")
                                                .font(.title3.weight(.bold))
                                                .foregroundColor(.blue)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.title3)
                                                .foregroundColor(.red)
                                        }
                                        HStack{
                                            Image(systemName: "xmark")
                                            Text("Lorem text")
                                                .font(.title3)
                                                .foregroundColor(.red)
                                        }
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.horizontal,36)
                                    HStack{
                                        Text("SR")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        Text("529")
                                            .font(.title.weight(.bold))
                                            .foregroundColor(.black)
                                        Text("/month")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(height: 50)
                                    .foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
                                    .padding(.horizontal, 16)
                                Text("Continue")
                                    .font(.title2.weight(.bold))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
        }
    }
    }
}

struct trainer_Previews: PreviewProvider {
    static var previews: some View {
        trainer()
    }
}
