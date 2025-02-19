//
//  SeriesDetail.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Thampie Anthonyrajah on 17/02/2025.
//

import CoreLocation
import SwiftUI

struct SeriesDetail: View {
    var series:Series
    let spacerSize: CGFloat = 100
    var mapHeihght: CGFloat = 300
    var body: some View {
        ScrollView{
            VStack{
                MapView(coordinate: CLLocationCoordinate2DMake(series.latitude, series.longitude))
                    .frame(height: mapHeihght)
                CircleImage(image: Image(series.image))
                    .offset(y: -spacerSize)
                    .padding(.bottom, -spacerSize)
                Text(series.title).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 20.0).font(.title)
                
                Text("Seasons: \(String(series.seasons))").frame(maxWidth: .infinity, alignment: .leading).padding([.top, .leading]).padding(.bottom, 5.0)
                
                Text(series.description).padding(.horizontal, 15.0)
                
            }
        }.navigationTitle(series.title).navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SeriesDetail(series: seriesSourceList[0])
}
