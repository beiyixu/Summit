//
//  HotelDecoder.swift
//  Summit
//
//  Created by Beiyi Xu on 12/8/21.
//

import Foundation

struct Hotels: Decodable, Identifiable {
    
    let id = UUID()
    var short: String
    var line1: String
    var city: String
    var postalCode: String
    var region: String
    var country: String
    var countryName: String
    var longitude: Double
    var latitude: Double
    var name: String
    var starRating: Double
    var websiteUrl: String
    var phoneNumbers: [String]
    var images: String
    
    enum CodingKeys: String, CodingKey {
        case name, starRating, websiteUrl, phoneNumbers, images, description, address, location
    }
    
    enum DescriptionKeys: String, CodingKey {
        case short
    }
    
    enum AddressKeys: String, CodingKey {
        case line1, city, postalCode, region, country, countryName
    }
    
    enum LocationKeys: String, CodingKey {
        case latitude, longitude
    }
    
    init(from decoder: Decoder) throws {
        let outerContainer = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionContainer = try outerContainer.nestedContainer(keyedBy: DescriptionKeys.self,
                                                                  forKey: .description)
        let addressContainer = try outerContainer.nestedContainer(keyedBy: AddressKeys.self,
                                                                      forKey: .address)
        let locationContainer = try outerContainer.nestedContainer(keyedBy: LocationKeys.self,
                                                                                   forKey: .location)
        self.short = try descriptionContainer.decode(String.self, forKey: .short)
        self.line1 = try addressContainer.decode(String.self, forKey: .line1)
        self.city = try addressContainer.decode(String.self, forKey: .city)
        self.postalCode = try addressContainer.decode(String.self, forKey: .postalCode)
        self.region = try addressContainer.decode(String.self, forKey: .region)
        self.country = try addressContainer.decode(String.self, forKey: .country)
        self.countryName = try addressContainer.decode(String.self, forKey: .countryName)
        self.longitude = try locationContainer.decode(Double.self, forKey: .longitude)
        self.latitude = try locationContainer.decode(Double.self, forKey: .latitude)
        self.name = try outerContainer.decode(String.self, forKey: .name)
        self.starRating = try outerContainer.decode(Double.self, forKey: .starRating)
        self.websiteUrl = try outerContainer.decode(String.self, forKey: .websiteUrl)
        self.phoneNumbers = try outerContainer.decode([String].self, forKey: .phoneNumbers)
        self.images = try outerContainer.decode(String.self, forKey: .images)
      }
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
