//
//  EmbededMap.swift
//  Summit
//
//  Created by Beiyi Xu on 1/30/22.
//

import SwiftUI
import MapKit

struct EmbededMap: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            MapView(coordinate: CLLocationCoordinate2DMake(39.5029861, -106.1557894), userInteraction: true)
            .navigationBarHidden(true)
        }.ignoresSafeArea()
            .navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
                    self.mode.wrappedValue.dismiss()
                }){
                    Image(systemName: "arrow.left").foregroundColor(.white)
                })
        
    }
}

struct EmbededMap_Previews: PreviewProvider {
    static var previews: some View {
        EmbededMap()
    }
}
