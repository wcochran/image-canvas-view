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
        VStack(alignment: .leading) {
            HStack {
                Button("Left", action: {print("do left")})
                Spacer()
                Button("Right", action: {print("do right")})
            }
            .padding(.horizontal, 8)
            ZStack(alignment: .center) {
                GeometryReader { geom in
                    let aspect = uiimage.size.width / uiimage.size.height
                    let w = geom.size.width
                    let h = geom.size.width / aspect
                    let fits = h <= geom.size.height
                    let s = fits ? 1.0 : geom.size.height / h
                    let W = s*w
                    let H = s*h
                    let x0 = (geom.size.width - W)/2
                    ImageView(uiimage: uiimage)
                        .frame(width: W, height: H, alignment: .top)
                        .position(x: x0 + W/2, y: H/2)
                    CanvasView()
                        .frame(width: W, height: H, alignment: .top)
                        .position(x: x0 + W/2, y: H/2)
                }
            }
        }
    }
}

struct WidgetView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
