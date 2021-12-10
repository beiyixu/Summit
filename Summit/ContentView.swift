//
//  ContentView.swift
//  Summit
//
//  Created by Beiyi Xu on 11/30/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var showSplash = true
    
    var body: some View {
        ZStack {
        HotelContent()
        SummitScreen().opacity(showSplash ? 1 : 0)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
                      SummitScreen.shouldAnimate = false
                      withAnimation() {
                      self.showSplash = false
                    }
                  }
              }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}

extension ContentView {
    
}
