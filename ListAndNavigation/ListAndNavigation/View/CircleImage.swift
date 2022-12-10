//
//  CircleImage.swift
//  CombineView
//
//  Created by Md Sulayman on 08.12.22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .renderingMode(.original)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
