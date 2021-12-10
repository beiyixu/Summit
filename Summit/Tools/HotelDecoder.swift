//
//  HotelDecoder.swift
//  Summit
//
//  Created by Beiyi Xu on 12/8/21.
//

import Foundation

struct Hotels: Codable, Identifiable {
    
    let id = UUID()
    
    struct descriptionType: Codable {
        var short: String
    }
    
    struct addressType: Codable {
        var line1: String
        var city: String
        var postalCode: String
        var region: String
        var country: String
        var countryName: String
    }
    
    struct locationType: Codable {
        var longitude: Double
        var latitude: Double
    }
    
    var description: descriptionType
    var address: addressType
    var location: locationType
    var name: String
    var starRating: Double
    var websiteUrl: String
    var phoneNumbers: [String]
    var images: String
}

class hotelApi {
    
    func getData(completion: @escaping ([Hotels]) -> ()) {
        
        if let fileLocation = Bundle.main.url(forResource: "Hotels", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let posts = try JSONDecoder().decode([Hotels].self, from: data)
                DispatchQueue.main.async {
                    completion(posts)
                }
            } catch {
                print(error)
            }
        }
        
    }
}
