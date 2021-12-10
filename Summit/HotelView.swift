//
//  HotelView.swift
//  Summit
//
//  Created by Beiyi Xu on 12/8/21.
//

import SwiftUI

struct HotelView: View {
    
    @Binding var hotelName: String
    @Binding var stars: Double
    @Binding var image: String
    @Binding var description: String
    
    let screen: CGRect = UIScreen.main.bounds
    
    
    var body: some View {
        
        let width = screen.width * 0.95
        let height = screen.width * 0.9 + 100
        
        ZStack {
            AsyncImage(url: URL(string: image)) { imageData in
                imageData.resizable().frame(width: width, height: height).aspectRatio(contentMode: .fill)
            } placeholder: {
                Image("hotelFiller").frame(width: width, height: height).aspectRatio(contentMode: .fill)
            }
            
            VStack {
                VStack(spacing:10){
                    Text(hotelName).frame(width: width, height: 100,alignment: .leading).foregroundColor(.white).font(.system(size:40).weight(.bold)).offset(x: 10, y: 10)
                    HStack {
                        StarsView(rating: Float(stars))
                        Text(String(stars)).foregroundColor(.white).frame(width: 50, alignment: .leading).offset(x:10)
                        Spacer()
                    }.frame(alignment: .leading).offset(x:10)
                    Text("Description").foregroundColor(.white).frame(width: width, alignment: .leading).offset(x:10)
                }.frame(width: width, height: height * 0.4, alignment: .topLeading).background(.black.opacity(0.7))
                Spacer()
            }
        }.frame(width: width, height: height).background(.blue).cornerRadius(35)
    }
}

struct HotelView_Previews: PreviewProvider {
    @State static var hotelName = "Tucker Mountain Lodge"
    @State static var stars = 5.0
    @State static var image = "https://www.skitds.com/images/ire/ff_vTMLCMR1.jpg"
    @State static var description = "This is a nice lodge"
    static var previews: some View {
        HotelView(hotelName: $hotelName, stars: $stars, image: $image, description: $description)
            .previewDevice("iPhone 13 Pro")
    }
}
