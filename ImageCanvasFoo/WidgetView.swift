//
//  WidgetView.swift
//  ImageCanvasFoo
//
//  Created by Wayne Cochran on 9/28/23.
//

import SwiftUI

struct WidgetView: View {
    let uiimage = UIImage(named: "cateyes")!
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button("Left", action: {print("do left")})
                Spacer()
                Button("Right", action: {print("do right")})
            }
            .padding(.horizontal, 8)
            ImageView(uiimage: uiimage)
                .overlay { CanvasView() }
            Spacer()
//           ZStack(alignment: .center) {
//                GeometryReader { geom in
//                    let aspect = uiimage.size.width / uiimage.size.height
//                    let w = min(geom.size.width, uiimage.size.width)
//                    let h = w / aspect
//                    let fits = h <= geom.size.height
//                    let s = fits ? 1.0 : geom.size.height / h
//                    let W = s*w, H = s*h
//                    let x0 = (geom.size.width - W)/2, y0 : CGFloat = 0.0
//                    ImageView(uiimage: uiimage)
//                        .frame(width: W, height: H, alignment: .top)
//                        .position(x: x0 + W/2, y: y0 + H/2)
//                        .overlay(CanvasView()
//                            .frame(width: W, height: H, alignment: .top)
//                            .position(x: x0 + W/2, y: y0 + H/2))
//                    CanvasView()
//                       .frame(width: W, height: H, alignment: .top)
//                       .position(x: x0 + W/2, y: y0 + H/2)
//                }
//            }
        }
    }
}

struct WidgetView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
