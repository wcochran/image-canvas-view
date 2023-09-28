//
//  ImageView.swift
//  ImageCanvasFoo
//
//  Created by Wayne Cochran on 9/28/23.
//

import SwiftUI

struct ImageView: View {
    var uiimage : UIImage!
    var body: some View {
        Image(uiImage: uiimage)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        let uiimage = UIImage(named: "cateyes")!
        ImageView(uiimage: uiimage)
    }
}
