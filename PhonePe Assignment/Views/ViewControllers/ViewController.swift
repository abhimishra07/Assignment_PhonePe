//
//  ViewController.swift
//  PhonePe Assignment
//
//  Created by Admin on 29/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ViewModel()
    var moviesData: Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MoviesTableViewCell", bundle: nil), forCellReuseIdentifier: "MoviesTableViewCell")
        getMoviesData()
    }
    
    private func getMoviesData() {
        viewModel.getMovieData { [weak self] in
            guard let self = self  else { return }
            self.moviesData = self.viewModel.moviesData
            self.tableView.reloadData()
        }
    }


}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesData?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesTableViewCell") as? MoviesTableViewCell else {
            return UITableViewCell()
        }
        cell.configCell(result: moviesData?.results[indexPath.row])
        return cell
    }
    
    
}
