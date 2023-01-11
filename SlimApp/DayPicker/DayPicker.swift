//
//  DayPicker.swift
//  SlimApp
//
//  Created by Ahmed Mgua on 11/01/23.
//

import SwiftUI

struct DayPicker: View {
    @Binding var days: [Weekday]
    var body: some View {
        HStack {
            ForEach(Weekday.allCases, id: \.self) { day in
                Button(day.abbrv) {
                    select(day)
                }
                .padding(8)
                .foregroundColor(isSelected(day) ? .blue : .primary)
                .background {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(lineWidth: 2)
                        .foregroundColor(isSelected(day) ? Color.blue : .clear)
                }
            }
        }
    }
    
    func isSelected(_ day: Weekday) -> Bool {
        days.contains(day)
    }
    
    func select(_ day: Weekday) {
        if let index = days.firstIndex(of: day) {
            days.remove(at: index)
        } else {
            days.append(day)
        }
    }
}

struct DayPicker_Previews: PreviewProvider {
    static var previews: some View {
        DayPicker(days: .constant([]))
    }
}
