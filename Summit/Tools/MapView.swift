//
//  MapView.swift
//  Summit
//
//  Created by Beiyi Xu on 12/2/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
      MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
      let region = MKCoordinateRegion(center: coordinate, span: span)
      view.setRegion(region, animated: true)
        view.mapType = .hybrid
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2DMake(39.5029861, -106.1557894))
            .edgesIgnoringSafeArea(.all).previewDevice("IPhone 13")
    }
}
