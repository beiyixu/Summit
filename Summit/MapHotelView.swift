//
//  MapHotelView.swift
//  Summit
//
//  Created by Beiyi Xu on 1/25/22.
//

import SwiftUI
import MapKit

struct MapHotelView: View {
    @Binding var height: CGFloat
    @Binding var width: CGFloat
    
    var body: some View {
        ZStack{
            
            MapView(coordinate: CLLocationCoordinate2DMake(39.5029861, -106.1557894), userInteraction: false)
            VStack {
                Spacer()
                    VStack {
                        Text("View Hotels Around You").frame(width: width, height: height * 0.3,alignment: .topLeading).foregroundColor(.white).font(.system(size:45).weight(.bold)).offset(x: 10, y: 10).minimumScaleFactor(0.2)
                
                    }.frame(width: width, height: height * 0.3, alignment: .bottom).background(.black.opacity(0.7))
            }
            
            
        }.frame(width: width, height: height).background(.blue).cornerRadius(35)
    }
}

struct MapHotelView_Previews: PreviewProvider {
    @State static var width = UIScreen.main.bounds.width * 0.95
    @State static var height = UIScreen.main.bounds.width * 0.9 + 100
    static var previews: some View {
        MapHotelView(height: $height, width: $width)
    }
}
