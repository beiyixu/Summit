//
//  HotelContent.swift
//  Summit
//
//  Created by Beiyi Xu on 12/8/21.
//

import SwiftUI


let screen: CGRect = UIScreen.main.bounds

struct HotelContent: View {
    @State var hotels: [Hotels] = []
    @State var height = screen.width * 0.8
    @State var width = screen.width * 0.5 + 100
    @State var mapWidth = screen.width * 0.95
    @State var mapHeight = screen.width * 1.1
    
    var body: some View {
        VStack{
            
        NavigationHeader().frame(width: UIScreen.main.bounds.width, height: 70)
            ScrollView {
                MapHotelView(height: $mapHeight, width: $mapWidth)
            
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: [GridItem()]) {
                ForEach($hotels) { hotel in
                    let description = hotel.short
                    HotelView(hotelName: hotel.name, stars: hotel.starRating, image: hotel.images, description: description, width: $width, height: $height)
                }
            }.offset(x: 10)
            
                
        }.onAppear {
            hotelApi().getData { hotels in
                self.hotels = hotels
        }
        }.frame(height: height)
        
        Spacer()
        }
        }
    }
}

struct HotelContent_Previews: PreviewProvider {
    static var previews: some View {
        HotelContent().previewDevice("Iphone 13 Pro")
    }
}
