//
//  Data.swift
//  Homeapp
//
//  Created by Atheer Hassan  on 23/06/1443 AH.
//

import SwiftUI

struct info: Identifiable,Hashable{
    var id = UUID()
    let type:String
    let image:String
    let name:String
    let rating:String
    let Location:String
    let workingTime:String
    let detail:String
    let nameStbscription:String
    let price:String
    let Type_price:String
    
//    let subscription:String
//
    
//    struct Subscription {
//        let name:String
//        let price:Double
//    }
    
}


// information Data ...

var information = [

    info(type: "GYM",image: "GYM",name: "Fitness Time ",
         rating: " 4.00",
         Location:"KSA - jeddah",
         workingTime:"10:00AM - 10:00PM",
         detail: "Training club with advanced training equipment",
         nameStbscription:"Basic",
         price:"2000",
         Type_price: "/ month"),
    info(type: "Trainer", image: "4", name: "Ahmed Ali ", rating: " 5.00", Location:"KSA - jeddah", workingTime:"9:00AM - 9:00PM", detail: "Personal Trainer", nameStbscription:"Preimum", price:"1500" , Type_price: "/ month"),
    info(type: "GYM", image: "GYM", name: "Fitness Pro", rating: " 3.00", Location:"KSA - jeddah", workingTime:"24 Hours", detail: "Training club with advanced training equipment", nameStbscription:"Pro", price:"2000" , Type_price: "/ month"),
    info(type: "Trainer", image: "4", name: "Mohammed Saleh", rating: " 2.30", Location:"KSA - jeddah", workingTime:"10:00AM - 10:00PM", detail: "Personal Trainer", nameStbscription:"Basic", price:"2000" , Type_price: "/ month"),
    info(type: "GYM", image: "GYM", name: "Fitness Time ", rating: " 4.00", Location:"KSA - jeddah", workingTime:"10:00AM - 10:00PM", detail: "Training club with advanced training equipment", nameStbscription:"Basic", price:"2000" , Type_price: "/ month"),
    info(type: "GYM", image: "GYM", name: "Fitness Time ", rating: " 4.00", Location:"KSA - jeddah", workingTime:"10:00AM - 10:00PM", detail: "Training club with advanced training equipment", nameStbscription:"Basic", price:"2000" , Type_price: "/ month"),
    
]

var subscriptionsss:[info]=[]
