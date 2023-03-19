//
//  EventDetailViewController.swift
//  EventsApp
//
//  Created by Айсен Еремеев on 24.02.2023.
//

import UIKit

final class EventDetailViewController: UIViewController {
    
    
    @IBOutlet var timeRemainingStackView:
        TimeRemainingStackView! {
            didSet {
                timeRemainingStackView.setup()
            }
    }
    
    @IBOutlet var backgroundImageView: UIImageView!
    var viewModel: EventDetailViewModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.onUpdate = { [weak self] in
            guard let self = self, let timeRemainingViewModel = self.viewModel.timeRemainingViewModel else { return }
            self.backgroundImageView.image = self.viewModel.image
            self.timeRemainingStackView.update(with: timeRemainingViewModel)
        }
        navigationItem.rightBarButtonItem = .init(image: UIImage(systemName: "pencil"), style: .plain, target: viewModel, action: #selector(viewModel.editButtonTapped))
        viewModel.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisappear()
    }
}













