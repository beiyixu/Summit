//
//  ContentView.swift
//  Summit
//
//  Created by Beiyi Xu on 11/30/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSplash = true
    
    var body: some View {
        ZStack {
            
            NavigationView {
                HotelContent()
                    .navigationBarHidden(true)

            }
        SummitScreen().opacity(showSplash ? 1 : 0)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
                      SummitScreen.shouldAnimate = false
                      withAnimation() {
                      self.showSplash = false
                    }
                  }
              }
        }.background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
