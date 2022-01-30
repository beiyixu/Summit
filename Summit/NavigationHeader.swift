//
//  NavigationHeader.swift
//  Summit
//
//  Created by Beiyi Xu on 1/25/22.
//

import SwiftUI

struct NavigationHeader: View {
    var body: some View {
        VStack{
        HStack{
            Spacer()
            Spacer()
            Logo()
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass").font(.title).foregroundColor(.black)
            })
        }
            Divider()
             .frame(height: 2)
             .padding(.horizontal, 30)
             .background(Color.black)

        }.padding(5).background(Color(uiColor: .offWhite)).cornerRadius(10, corners: [.bottomLeft, .bottomRight])
    }
}

struct NavigationHeader_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHeader().previewLayout(.fixed(width: 500, height: 100))
    }
}
