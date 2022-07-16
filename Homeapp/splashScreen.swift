//
//  splashScreen.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 23/06/1443 AH.
//

import SwiftUI

struct splashScreen: View {
    @State var animate = false
    @State var endsplash = false
    var body: some View {
        ZStack{
            home()
            ZStack{
                
                Image("back1")
                
                Image("logo")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: animate ? .fill :.fit)
                    .frame(width: animate ? nil : 400, height:  animate ? nil : 600)
                
                    .scaleEffect(animate ? 3 : 1)
                    .frame(width: UIScreen.main.bounds.width, height: 100)
            }
            .edgesIgnoringSafeArea(.all)
            onAppear(perform: animateSplash )
                .opacity(endsplash ? 0 : 1)
        }
    }
    func animateSplash(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25){
            withAnimation(Animation.easeOut(duration: 0.45)){
                
                animate.toggle()
            }
            
            withAnimation(Animation.easeIn(duration: 0.35)){
                
                endsplash.toggle()
            }
        }
    }
}

struct splashScreen_Previews: PreviewProvider {
    static var previews: some View {
        splashScreen()
    }
}
