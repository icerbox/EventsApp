//
//  AddEventViewModel.swift
//  EventsApp
//
//  Created by Айсен Еремеев on 17.02.2023.
//

import UIKit

final class AddEventViewModel {
    
    let title = "Add"
    
    var onUpdate: () -> Void = {}
    
    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
    }
    private(set) var cells: [AddEventViewModel.Cell] = []
    var coordinator: AddEventCoordinator?
    
    func viewDidLoad() {
        cells = [
            .titleSubtitle(
                TitleSubtitleCellViewModel(title: "Name", subtitle: "", placeholder: "Add a name", type: .text, onCellUpdate: {})
            ),
            .titleSubtitle(
                TitleSubtitleCellViewModel(title: "Date", subtitle: "", placeholder: "Select a date", type: .date, onCellUpdate: {[weak self] in
                    self?.onUpdate()
                })
            ),
            .titleSubtitle(
                TitleSubtitleCellViewModel(title: "Background", subtitle: "", placeholder: "Select a date", type: .image, onCellUpdate: {[weak self] in
                    self?.onUpdate()
                })
                )
        ]
        onUpdate()
    }
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    
    func numberOfRows() -> Int {
        return cells.count
    }
    
    func cell(for indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
    
    func tappedDone() {
        print("tappedDone®")
        //extract info from view models and save in core data
        // tell coordinator to dismiss
    }
    
    func updateCell(indexPath: IndexPath, subtitle: String) {
        switch cells[indexPath.row] {
        case .titleSubtitle(let titleSubtitleCellViewModel):
            titleSubtitleCellViewModel.update(subtitle)
        }
    }
}





