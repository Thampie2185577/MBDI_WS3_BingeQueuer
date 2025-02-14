//
//  SeriesList.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Thampie Anthonyrajah on 14/02/2025.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        NavigationView{
            List(seriesSourceList){
                series in
                NavigationLink(destination: BingeBow(series: series)){
                    BingeBow(series: series)
                }
            }.navigationTitle("Movielist")
        }
    }
}

#Preview {
    SeriesList()
}
