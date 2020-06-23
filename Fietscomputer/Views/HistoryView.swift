//
//  HistoryView.swift
//  Fietscomputer
//
//  Created by Grigory Avdyushin on 18/06/2020.
//  Copyright © 2020 Grigory Avdyushin. All rights reserved.
//

import SwiftUI

struct HistoryView: View {

    @ObservedObject var viewModel: HistoryViewModel
    @FetchRequest(sortDescriptors: Ride.sortDescriptors) var rides: FetchedResults<Ride>

    var body: some View {
        NavigationView {
            List(rides) { ride in
                NavigationLink(destination: RideViewDetails(viewModel: RideDetailsViewModel(ride: ride))) {
                    RideCellView(viewModel: RideViewModel(
                        createdAt: ride.createdAt,
                        summary: ride.asRideSummary(),
                        center: ride.mapCenter(),
                        locations: ride.locations()
                    )).padding([.bottom], 6)
                }
            }.listStyle(GroupedListStyle())
            .navigationBarTitle(Strings.rides)
        }
    }
}
