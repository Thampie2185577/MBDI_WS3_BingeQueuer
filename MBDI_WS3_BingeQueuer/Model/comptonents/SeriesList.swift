//
//  SeriesList.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Thampie Anthonyrajah on 14/02/2025.
//

import SwiftUI

struct SeriesList: View {
    @State var seriesDataList = seriesSourceList
    var body: some View {
        NavigationView{
            List{
                ForEach(seriesDataList){
                        series in  NavigationLink(destination: SeriesDetail(series: series)){
                            BingeBow(series: series)
                    }
                }.onDelete(perform: delete)
            }.navigationTitle("Movielist")
        }
    }
    
    
    func delete(at offsets: IndexSet) {
        seriesDataList.remove(atOffsets: offsets)
    }
}

#Preview {
    SeriesList()
}
