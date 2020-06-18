//
//  HistoryViewModel.swift
//  Fietscomputer
//
//  Created by Grigory Avdyushin on 18/06/2020.
//  Copyright © 2020 Grigory Avdyushin. All rights reserved.
//

import SwiftUI

class HistoryViewModel: ObservableObject {

    @FetchRequest(sortDescriptors: Ride.sortDescriptors) var rides: FetchedResults<Ride>
}
