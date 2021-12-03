//
//  ContentView.swift
//  Summit
//
//  Created by Beiyi Xu on 11/30/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        SummitScreen().background(Color(.darkBlue))
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
