//
//  subscriptionView.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 27/06/1443 AH.
//

import SwiftUI

struct subscriptionView: View {
    var info: info
    var body: some View {
        ZStack(alignment: .center){
            Rectangle()
                .frame(width: 300 , height: 120)
                .padding()
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 4, x: 1, y:1)
            HStack(alignment: .top){
                Image(info.image)
                    .frame(width: 100, height: 100, alignment: .leading)
                VStack(alignment: .leading){
                    Text(info.name)
                        .font(.title3.weight(.bold))
                    Text(info.detail)
                        .font(.caption)
                    HStack{
                        Text("Training left:")
                            .font(.caption)
                        Text("12")
                            .font(.subheadline.bold())
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 180, height: 35)
                            .foregroundColor(Color(red: 176 / 255, green: 113 / 255, blue: 124 / 255))
                        Text("View")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct subscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
