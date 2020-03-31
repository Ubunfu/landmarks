//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ryan Allen on 3/28/20.
//  Copyright © 2020 Ryan Allen. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[4].image)
    }
}
