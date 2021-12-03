//
//  SummitScreen.swift
//  Summit
//
//  Created by Beiyi Xu on 12/1/21.
//

import SwiftUI

struct SummitScreen: View {
    
    let uLineWidth: CGFloat = 5
    let uZoomFactor: CGFloat = 1.4
    let lineWidth:  CGFloat = 4
    let lineHeight: CGFloat = 28
    
    @State var percent = 0.0
    @State var uScale: CGFloat = 1
    @State var lineScale: CGFloat = 1
    @State var textAlpha = 0.0
    @State var textScale: CGFloat = 1
    @State var mountainAlpha = 1.0
    @State var lineColor: Color = .black
    
    
    
    static var shouldAnimate = true
    var body: some View {
        ZStack{
            Image("background")
                .resizable(resizingMode: .tile)
                .opacity(textAlpha)
                .scaleEffect(textScale)
            
            
            ZStack(alignment: .center){
                
            Text("SU              IT")
                .font(.largeTitle.weight(.semibold))
                .foregroundColor(lineColor)
                .opacity(textAlpha)
                .offset(x: 0, y: 0)
                .scaleEffect(textScale + 0.6)
            
                MountainLogo(lineColor: $lineColor).frame(width: 90, height: 90).opacity(mountainAlpha).offset(x: -30, y: 0).scaleEffect(textScale)
               
                MountainLogo(lineColor: $lineColor).frame(width: 90, height: 90).opacity(mountainAlpha).onAppear {
                self.handleAnimations()
            }.offset(x: 40, y: 0).scaleEffect(textScale)
                
            
            }
        }.background(Color(.darkBlue))
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct SummitScreen_Previews: PreviewProvider {
    static var previews: some View {
        SummitScreen()
    }
}

extension SummitScreen {
    
    var uAnimationDuration: Double { return 2.5 }
    var uAnimationDelay: Double { return  0.5 }
    var uExitAnimationDuration: Double { return 0.3 }
    var finalAnimationDuration: Double { return 0.4 }
    var minAnimationInterval: Double { return 0.1 }
    var fadeAnimationDuration: Double { return 0.4 }
    
    func handleAnimations() {
      runAnimationPart1()
      runAnimationPart2()
    }
    
    func runAnimationPart1() {
      withAnimation(.easeIn(duration: uAnimationDuration)) {
        percent = 1
        uScale = 5
        lineScale = 1
      }
      
      withAnimation(Animation.easeIn(duration: uAnimationDuration).delay(0.5)) {
        textAlpha = 1.0
      }
      
      let deadline: DispatchTime = .now() + uAnimationDuration + uAnimationDelay
      DispatchQueue.main.asyncAfter(deadline: deadline) {
        withAnimation(.easeOut(duration: self.uExitAnimationDuration)) {
          self.uScale = 0
          self.lineScale = 0
        }
        withAnimation(Animation.spring()) {
          self.textScale = self.uZoomFactor
        }
      }
    }
    
    func runAnimationPart2() {
      DispatchQueue.main.asyncAfter(deadline: .now() + 2*uAnimationDuration) {
        withAnimation(.easeIn(duration: self.finalAnimationDuration)) {
          self.textAlpha = 0
            self.mountainAlpha = 0
        }
      }
    }
}
