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
                Text("S").font(.system(size: 50)).foregroundColor(.white).font(.headline)
            Text("U").font(.system(size: 50)).foregroundColor(.white).font(.headline)
            Image("mountainHeavy").resizable().frame(width: 80, height: 50, alignment: .center).symbolRenderingMode(.monochrome)
            }.padding(1)
            HStack {
            Image("mountainHeavy").resizable().frame(width: 80, height: 50, alignment: .center).symbolRenderingMode(.monochrome)
            Text("I").font(.system(size: 50)).foregroundColor(.white).font(.headline)
            Text("T").font(.system(size: 50)).foregroundColor(.white).font(.headline)
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
