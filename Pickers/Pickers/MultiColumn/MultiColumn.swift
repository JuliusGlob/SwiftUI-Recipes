//
//  MultiColumn.swift
//  Pickers
//
//  Created by Julio Ismael Robles on 15/11/2021.
//

import SwiftUI

struct MultiColumn: View {
    @State var selectedHour: Int = 0
    @State var selectedMinutes: Int = 0
    @State var selectedSeconds: Int = 0
    
    var selectedTime: Date? {
        var calendarDateComponents =
        Calendar.current.dateComponents([.day, .year, .month], from: Date())
        calendarDateComponents.hour = selectedHour
        calendarDateComponents.minute = selectedMinutes
        calendarDateComponents.second = selectedSeconds
        let current = Calendar.current.date(from:calendarDateComponents)
        return current
    }
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack {
                    Spacer()

                    VStack {
                        Text("Hour")
                        Picker("Hour", selection: $selectedHour) {
                            ForEach(0...23, id: \.self) { hour in
                                Text("\(hour)").tag(hour)
                            }
                        }.pickerStyle(.wheel)
                            .clipped()
                            .frame(width: geometry.size.width / 3.5)
                    }
                    VStack {
                        Text("Minute")
                        Picker("Minutes", selection: $selectedMinutes) {
                            ForEach(0...59, id: \.self) { minute in
                                Text("\(minute)").tag(minute)
                            }
                        }.pickerStyle(.wheel)
                            .clipped()
                            .frame(width: geometry.size.width / 3.5)
                    }
                    VStack {
                        Text("Second")
                        
                        Picker("Seconds", selection: $selectedSeconds) {
                            ForEach(0...59, id: \.self) { second in
                                Text("\(second)").tag(second)
                            }
                        }.pickerStyle(.wheel)
                            .clipped()
                            .frame(width: geometry.size.width / 3.5)
                    }
                    Spacer()
                }
                
                Text("Selected Time:")
                    .font(.title2)
                    .padding()
                selectedTime.map {
                    Text("\($0)")
                        .font(.caption)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                    
                    
            }
        }
    }
}

struct MultiColumn_Previews: PreviewProvider {
    static var previews: some View {
        MultiColumn()
    }
}
