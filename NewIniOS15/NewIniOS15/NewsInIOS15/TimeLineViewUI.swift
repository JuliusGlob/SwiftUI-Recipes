//
//  TimeLineViewUI.swift
//  NewIniOS15
//
//  Created by Julio Ismael Robles on 16/11/2021.
//

import SwiftUI

struct TimeLineViewUI: View {
    var body: some View {
        VStack {
            TimelineView(PeriodicTimelineSchedule(from: Date(), by: 1)) { context in
                Text("\(context.date)")
            }
        }
    }
}

struct TimeLineViewUI_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineViewUI()
    }
}
