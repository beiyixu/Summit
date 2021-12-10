//
//  HotelContent.swift
//  Summit
//
//  Created by Beiyi Xu on 12/8/21.
//

import SwiftUI

struct HotelContent: View {
    @State var hotels: [Hotels] = []
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem()], content: {
                ForEach($hotels) { hotel in
                    let description = hotel.description.short
                    HotelView(hotelName: hotel.name, stars: hotel.starRating, image: hotel.images, description: description)
                }
            }).padding()
                
        }.onAppear {
            hotelApi().getData { hotels in
                self.hotels = hotels
            }
        }
    }
}

struct HotelContent_Previews: PreviewProvider {
    static var previews: some View {
        HotelContent().previewDevice("Iphone 13 Pro")
    }
}
