//
//  done.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 23/06/1443 AH.
//

import SwiftUI

struct done: View {
   // @Binding var rootPresenting : Bool

    var body: some View {
//        NavigationView {
         ZStack{
            Image("back1")
                 .resizable()
                 .edgesIgnoringSafeArea(.all)
             
            
            ZStack{
                 
                    RoundedRectangle(cornerRadius:31)
                         .frame(width: 330, height: 230)
                        .padding(.all, 60)
                        .foregroundColor(Color.white)

                Image("check")
                    .resizable()
                    .frame(width: 90, height: 80)
                    .padding([.leading, .bottom], 227.0)
                VStack(alignment: .center){
                Text("Success!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 7.0)
                 Text("You successfully added the item \n to subscription")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(Color(red: 0.395, green: 0.4, blue: 0.396))
                    .multilineTextAlignment(.center)
                
                ZStack {
                RoundedRectangle(cornerRadius:15)
                    .frame(width: 359, height: 47)
                    .foregroundColor(Color(red: 0.728, green: 0.425, blue: 0.48))
                    
                    .shadow(color: Color.white,radius: 3)
                    
                    NavigationLink(destination: ContentView()){
                        Text("Go to Subscription!")
                          .font(.title2)
                          .fontWeight(.semibold)
                          .foregroundColor(Color.white)
                    }
                    
//                    Button(action: { rootPresenting = false }
//                           ,label: {
//                        Text("Go to Subscription!")
//                            .font(.title2)
//                            .fontWeight(.semibold)
//                            .foregroundColor(Color.white)
//                    })
                }
                Text("Ccontinue Selection")
                    .font(.caption2)
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.361))
                    .padding(.vertical, 9.0)
             }
             }
             
         }
         .padding(.top, -64.0)
         //}
    }
}

//struct done_Previews: PreviewProvider {
//    static var previews: some View {
//        done()
//    }
//}
