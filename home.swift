//
//  home.swift
//  Homeapp
//
//  Created by EMAN MOHAMMED on 25/01/2022.
//

import SwiftUI


struct home: View {
    
    //@State private var rootPresenting : Bool = false
    @State var selected = 1
    @State private var searchQuery = ""
    var body: some View {
        
        //NavigationView {

        VStack{
            VStack{
                ZStack{
                    // header
                    Image("Image5")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(height:328.0)
                    //.padding(.top,-160)
                    LinearGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2197437286, green: 0.1490013897, blue: 0.1642106473, alpha: 1)) , Color(#colorLiteral(red: 0.2181376517, green: 0.1501809359, blue: 0.1646053195, alpha: 0.5378207782))]),
                        startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    //.padding(.top,-160)
                    
                    // Logo
                    HStack{
                        Image("Logo")
                            .padding(.top,-160) .padding(.trailing,266)
                            .foregroundColor(Color.white)
                            .frame(width: 800.0, height: 100)
                    }
                    // title
                    HStack{
                        Text("Explore the best ….")
                            .padding(.top,-60) .padding(.trailing,189)
                            .font(.system(size: 18))
                            .foregroundColor(Color.white)
                            .frame(width: 800.0, height: 90)
                    }
                    // search bar
                    VStack{
                        Image(systemName: "magnifyingglass")
                            .padding(.trailing,300)
                            .font(.system(size: 23))
                            .foregroundColor(.gray)
                        TextField("Search", text: $searchQuery)
                            .padding(.leading,20)
                            .font(.system(size: 18, weight:.bold))
                            .colorInvert()
                            .padding(.leading)
                            .foregroundColor(.black)
                            .padding(.top,-25)
                            .frame(width: 339, height: 0)
                    }.padding(.vertical,5)
                        .background(Color.gray.opacity(0.28))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 0.4)
                        )
                    
                }
                
                //Services and Picker
                
                ZStack(){
                    RoundedRectangle(cornerRadius: 35)
                        .frame(height: 580)
                        .foregroundColor(.white)
                        .ignoresSafeArea()
                    ScrollView(showsIndicators: false){
                        VStack{
                            Text("Services")
                                .font(.system(size: 20))
                                .padding(.top)
                                .frame(maxWidth: .infinity,   alignment: .leading)
                                .padding(.horizontal,25)

                            // Picker
                            Picker (selection: $selected, label: Text("Picker"), content: {
                                
                                Text("All").tag(1)
                                
                                Text("Gym").tag(2)
                                Text("Trainer").tag(3)
                            }) .pickerStyle(SegmentedPickerStyle())
                                .padding(10)
                                .onAppear {
                                    
                                    UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(red: 0.69, green: 0.44, blue: 0.49, alpha: 1.00)
                                    UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
                                    
                                }
                                .cornerRadius(8)
                                .frame(width: 354, height:32 )
                                .padding(.bottom,20)

                            if searchQuery == "" {
                                
                                
                                // start condition Filter all
                                
                                if selected == 1 {
                                    VStack{
                                        ForEach(information) { info in
                                            NavigationLink(destination:gym(info: info)){
                                                infoView(info : info)
                                                
                                            }
                                        }
                                    }
                                }

                                // start condition Filter gym
                                
                                else if selected == 2{
                                    // Filter gym (1)
                                    VStack{
                                        ForEach(information) { info in
                                            if(info.type == "GYM"){
                                                infoView(info : info)
                                            }
                                        }
                                    }
                                }
                                
                                // start condition Filter Training
                                
                                else  {
                                    VStack{
                                        ForEach(information) { info in
                                            if(info.type == "Trainer"){
                                                infoView(info : info)
                                            }
                                        }
                                    }
                                }
                                
                                // end condition Filter Training
                            }
                            else{
                                ScrollView(.vertical,showsIndicators: true,
                                           
                                           content:{
                                    VStack{
                                        ForEach( searchQuery == "" ? information:
                                                    information.filter{ $0.name.lowercased().contains(searchQuery.lowercased())}){  info in
                                            
                                            NavigationLink(destination:gym(info: info)){
                                                infoView(info : info)
                                            }
                                        }
                                    }
                                })
                            }
                        }
                    }.padding(.bottom, 80)
                }.padding(.top, -110)
            }
        }
    //    }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
