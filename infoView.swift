//
// infoRow.swift
// Mini-Two
//
// Created by EMAN MOHAMMED on 20/01/2022.
//
import SwiftUI
struct infoView: View {
    var info: info
    var body: some View {
        HStack{
            Image(info.image)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Rectangle())
                .cornerRadius(7)
                .frame(maxWidth: 80, alignment: .trailing)
            
            VStack(alignment: .leading, spacing: 8){
                
                Text(info.name)
                    .fontWeight(.medium)
                    .font(.system(size: 16))
                    .foregroundColor(Color.black)
                
                
                Text(info.detail)
                
                
                    .foregroundColor(.gray)
                    .font(.system(size: 10))
                    .multilineTextAlignment(.leading)
                    .frame(height: 30)
                
                HStack{
                    
                    Text(Image(systemName: "location.circle") )
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    + Text(info.Location)
                        .foregroundColor(.gray)
                        .font(.system(size: 10))
                    
                    + Text(Image(systemName: "star.fill"))
                        .font(.system(size: 10))
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 1.0, green: 0.6627450980392157, blue: 0.15294117647058825)/*@END_MENU_TOKEN@*/)
                    
                    + Text(info.rating)
                        .foregroundColor(.gray)
                        .font(.system(size: 10))
                    
                }
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                
                Text(String(info.price)+" SR")
                    .foregroundColor(Color.white)
                    .frame(width: 72,height: 19)
                    .background(
                        Color(red: 0.611764705882353, green: 0.7294117647058823, blue: 0.6941176470588235)
                    )
                    .cornerRadius(8.5)
                    .font(.system(size: 13))
                    
                
                
                Text(info.Type_price)
                    .font(.system(size: 10))
                    .padding(.trailing,10.0)
                    .frame(width: 90, height:4.1 , alignment: .bottomTrailing)
                    .foregroundColor(.gray)
                
                
            }
            
            
            
            
        }.frame(width: 350, height: 79)
            .padding(.bottom,8)
            .padding(.top,8)
            . background(Color(red: 0.9490196078431372, green: 0.9450980392156862, blue: 0.9450980392156862, opacity: 0.717))
            .cornerRadius(15.5)
        
        
    }
}
struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
