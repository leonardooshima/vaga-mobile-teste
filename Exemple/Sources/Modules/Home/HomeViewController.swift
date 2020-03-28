//
//  HomeViewController.swift
//  Exemple
//
//  Created by Leonardo Oshima on 28/03/20.
//  Copyright © 2020 Leonardo Oshima. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Properties
    private let viewModel = HomeViewModel()
    private let cellIdentifier = String(describing: HomeTableViewCell.self)
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    //MARK: - Setups
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        registerNib()
    }
    
    private func registerNib() {
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
    }
}

//MARK - TableView DataSource and Delegates
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomeTableViewCell else {
            return HomeTableViewCell()
        }
        cell.fill(dto: viewModel.dtoForRow(indexPath: indexPath))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailView = DetailViewController()

        
        detailView.fillCell(dto: viewModel.dtoForRowDt(indexPath: indexPath))


        self.navigationController?.pushViewController(detailView, animated: true)
    }
}
