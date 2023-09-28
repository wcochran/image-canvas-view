//
//  CanvasView.swift
//  ImageCanvasFoo
//
//  Created by Wayne Cochran on 9/28/23.
//

import SwiftUI

struct CanvasView: View {
    var body: some View {
        Canvas { context, size in
            var path = Path()
            let w = size.width
            let h = size.height
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: w, y: h))
            path.move(to: CGPoint(x: 0, y: h))
            path.addLine(to: CGPoint(x: w, y: 0))
            context.stroke(path, with: .color(.black), style: .init(lineWidth: 4))
        }
    }
}

//struct CanvasView: View {
//    var body: some View {
//        GeometryReader { geometry in
//            let w = geometry.size.width
//            let h = geometry.size.height
//            Path { path in
//                path.move(to: CGPoint(x: 0,y: 0))
//                path.addLine(to: CGPoint(x: w, y: h))
//                path.move(to: CGPoint(x: 0, y: h))
//                path.addLine(to: CGPoint(x: w, y: 0))
//            }
//            .stroke(Color.black, lineWidth: 4)
//        }
//    }
//}

struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasView()
    }
}
