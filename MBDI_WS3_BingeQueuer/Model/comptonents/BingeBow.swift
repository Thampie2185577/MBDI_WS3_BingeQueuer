//
//  BingeBow.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Thampie Anthonyrajah on 14/02/2025.
//

import SwiftUI

struct BingeBow: View {
    var series:Series
    
    var body: some View {
        HStack{
            Image(series.image).resizable()
                .frame(width: 50, height:50)
            Text(series.title)
        }.navigationTitle(series.title).navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BingeBow(series: seriesSourceList[0])
}
