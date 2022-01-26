//
//  SwiftUIView.swift
//  Summit
//
//  Created by Beiyi Xu on 12/1/21.
//

import SwiftUI

struct Logo: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            HStack {
                Text("S").font(.system(size: 20)).foregroundColor(.black).font(.headline)
            Text("U").font(.system(size: 20)).foregroundColor(.black).font(.headline)
            Image("mountainHeavyDark").resizable().frame(width: 50, height: 30, alignment: .center).symbolRenderingMode(.monochrome)
            }.padding(1)
            HStack {
            Image("mountainHeavyDark").resizable().frame(width: 50, height: 30, alignment: .center).symbolRenderingMode(.monochrome)
            Text("I").font(.system(size: 20)).foregroundColor(.black).font(.headline)
            Text("T").font(.system(size: 20)).foregroundColor(.black).font(.headline)
            }.padding(1)
        }.ignoresSafeArea().padding()
    }
    
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
            .previewLayout(.sizeThatFits)
        Logo()
            .previewLayout(.sizeThatFits).preferredColorScheme(.dark)
    }
}
