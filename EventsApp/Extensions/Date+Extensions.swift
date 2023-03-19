//
//  Date+Extensions.swift
//  EventsApp
//
//  Created by Айсен Еремеев on 21.02.2023.
//

import Foundation

extension Date {
    func timeRemaining(until endDate: Date) -> String {
        let dateComponentsFormatter = DateComponentsFormatter()
        dateComponentsFormatter.allowedUnits = [.year, .month, .weekOfMonth, .day]
        dateComponentsFormatter.unitsStyle = .full
        return dateComponentsFormatter.string(from: self, to: endDate)!
    }
}
