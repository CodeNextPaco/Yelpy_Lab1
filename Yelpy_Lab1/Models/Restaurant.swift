//
//  Restaurant.swift
//  Yelpy_Lab1
//
//  Created by Paco on 7/10/22.
//

import Foundation

//A basic data model to hold each Restaurant, based on the expected JSON data
struct Restaurant: Decodable{
    
    //variable names match keys found in JSON.
    var name: String
    var image_url: String
    var display_phone: String
    var rating: Double
    var price: String? //not all restaurants have a price value, so make it optional.
    
   
    
}

struct RestaurantResponse: Decodable{

    var businesses:[Restaurant]//an array of Restaurant objects
    
}
