//
//  SearchViewController.swift
//  SearchBarTutorial
//
//  Created by 신미지 on 2021/07/16.
//

import UIKit

class SearchViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  private let cellId = "cell"
  
  var imageData: [String] = [
    "candy",
    "donut",
    "chocolate",
    "cake",
    "icecream"]
  
  var labelData: [String] = [
    "Candy",
    "Donut",
    "Chocolate",
    "Cake",
    "IceCream"]

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTableView()
  }
  
  private func configureTableView() {
    tableView.dataSource = self
    tableView.delegate = self
  }
}

extension SearchViewController:
  UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return imageData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
    cell.thumbImageView.image = UIImage(named: imageData[indexPath.row])
    cell.titleLabel.text = labelData[indexPath.row]
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 130.0
  }
}
