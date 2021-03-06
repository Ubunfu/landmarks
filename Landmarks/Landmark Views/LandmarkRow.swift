//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ryan Allen on 3/29/20.
//  Copyright © 2020 Ryan Allen. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    // "stored properties"
    var landmark: Landmark
    
    var body: some View {
        HStack {
            // image is an extended field of the Landmark, derived from creating an Image
            // object from the imageName field
            landmark.image
                // why no auto-complete while typing these modifiers?
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
//        .padding()
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        // landmarkData is type [Landmark], created by parsing JSON in Data.swift
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[7])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
