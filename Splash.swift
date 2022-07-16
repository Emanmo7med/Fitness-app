//
//  Splash.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 26/06/1443 AH.
//

import SwiftUI

struct Splash: View {
    @State var isActive : Bool = false
    var body: some View {
        VStack{
            if self.isActive{
                ContentView()
            }
            else{
                ZStack{
                    Image("back1")
                        .resizable()
                        .ignoresSafeArea()
                    Image("logo")
                        .padding(.leading,-20)
    
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.00){
                withAnimation{
                    self.isActive = true
                }
            }
        }
        
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
