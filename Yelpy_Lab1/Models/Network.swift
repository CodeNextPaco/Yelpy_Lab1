//
//  Network.swift
//  Yelpy_Lab1
//
//  Created by Paco on 7/11/22.
//

import Foundation

class Network {
    
    static func loadJSONFile()-> RestaurantResponse{
        
        // decodedData will hold our Restaurant Response array
        var decodedData = RestaurantResponse(businesses: [])
        
        do {
                //get the local JSON data from its path
                if let filePath = Bundle.main.path(forResource: "exampleAPI", ofType: "json") {
                    let fileUrl = URL(fileURLWithPath: filePath)
                    let data = try Data(contentsOf: fileUrl)
        
                    //decode the JSON data to fit our Restaurant Models
                    decodedData = try JSONDecoder().decode(RestaurantResponse.self, from: data)

                    //return a RestaurantRespose, which is an array of Restaurants
                    return decodedData
                }
            } catch {
                print("error: \(error)")
            }
        
        return decodedData
    }
    
    
}
