//
//  EventListViewModel.swift
//  EventsApp
//
//  Created by Айсен Еремеев on 17.02.2023.
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent() {
         coordinator?.startAddEvent()
    }
}
