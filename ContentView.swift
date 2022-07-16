//
//  ContentView.swift
//  mini2.2.1
//
//  Created by EMAN MOHAMMED on 23/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
         //Screen1
        TabView {
            NavigationView{
                home()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
//            NavigationView{
//             subscription()
//            }
//            .tabItem {
//                Image(systemName: "list.bullet.below.rectangle")
//                Text("Subscriptions")
//            }
            // Screen3
            NavigationView{
                offers()
            }
            .tabItem {
                Image(systemName: "star.fill")
                Text("Offers")
            }
            // Screen4
            NavigationView{
                Profile()
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
        }.accentColor(Color(red: 0.6901960784313725, green: 0.44313725490196076, blue: 0.48627450980392156))
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



