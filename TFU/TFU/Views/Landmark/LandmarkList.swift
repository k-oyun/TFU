//
//  LandmarkList.swift
//  TourForYou
//
//  Created by Admin on 8/19/25.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavortiteOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {landmark in
            (!showFavortiteOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationSplitView { // 아이패드 같은 큰 화면이 오는 경우 왼쪽에 쏠리게 만들어줌
            List() {
                Toggle(isOn: $showFavortiteOnly) {
                    Text("즐겨찾기만 보기")
                }
                
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
               
                    
            }
            .animation(.default,value: filteredLandmarks)
            .navigationTitle("관광명소")
        } detail : {
            Text("관광명소를 선택해주세요.")
        }
        
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
