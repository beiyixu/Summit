//
//  MountainLogo.swift
//  Summit
//
//  Created by Beiyi Xu on 12/1/21.
//

import SwiftUI

struct MountainLogo: View {
    
    @State var showLogo: Bool = true
    @State var endAmount: CGFloat = 0
    @State var isFilled: Bool = false
    @Binding var lineColor: Color
    
    let pathBounds = UIBezierPath.calculateBounds(paths: [.topLine,.topLine2,.midLine,.bottomLeft,.bottomRight,.wholeMountain])
    
    var body: some View {
        ZStack {
            ShapeView(bezier: .wholeMountain, pathBounds: pathBounds).fill(LinearGradient(colors: [Color(UIColor.darkBlue), .gray], startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(isFilled ? 1 : 0)
            ShapeView(bezier: .topLine, pathBounds: pathBounds).trim(from: 0, to: endAmount).stroke(lineColor, lineWidth: 3)
            ShapeView(bezier: .topLine2, pathBounds: pathBounds).trim(from: 0, to: endAmount).stroke(lineColor, lineWidth: 3)
            ShapeView(bezier: .midLine, pathBounds: pathBounds).trim(from: 0, to: endAmount).stroke(lineColor, lineWidth: 3)
            ShapeView(bezier: .bottomLeft, pathBounds: pathBounds).trim(from: 0, to: endAmount).stroke(lineColor, lineWidth: 3)
            ShapeView(bezier: .bottomRight, pathBounds: pathBounds).trim(from: 0, to: endAmount).stroke(lineColor, lineWidth: 3)
            
        }.onAppear {
            withAnimation(.easeInOut(duration: 3)) {
                    self.endAmount = 1
                }
            withAnimation(.easeInOut(duration: 5)) {
                    self.isFilled = true
                }
        }.padding()
    }
}

struct MountainLogo_Previews: PreviewProvider {
    @State static var lineColor: Color = .white
    static var previews: some View {
        MountainLogo(lineColor: $lineColor)
            .previewLayout(.sizeThatFits).preferredColorScheme(.dark)
    }
}
