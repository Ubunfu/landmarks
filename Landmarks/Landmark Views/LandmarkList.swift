//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryan Allen on 3/29/20.
//  Copyright © 2020 Ryan Allen. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        // Instead of passing the path to a unique field in my dataset,
        // I could alternatively conform Landmark to the `Identifiable` protocol
        
        NavigationView {
            // "for each thing in Collection, add this View to the List View"
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS", "iPhone SE"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
