//
//  SearchViewController.swift
//  SearchBarTutorial
//
//  Created by 신미지 on 2021/07/16.
//

import UIKit

class SearchViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var dessertData = [
    Dessert(
      image: "candy",
      dessertName: "Candy"),
    Dessert(
      image: "donut",
      dessertName: "Donut"),
    Dessert(
      image: "cake",
      dessertName: "Cake"),
    Dessert(
      image: "chocolate",
      dessertName: "Chocolate"),
    Dessert(
      image: "icecream",
      dessertName: "Ice Cream")
  ]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTableView()
  }
  
  private func configureTableView() {
     tableView.dataSource = self
     tableView.delegate = self
     tableView.register(
       DessertCell.self,
       forCellReuseIdentifier: "DessertListCell")
   }
}

extension SearchViewController:
  UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dessertData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "DessertListCell", for: indexPath) as!
      DessertCell
    print(dessertData[indexPath.row].image)
    cell.dessertImageView.image = UIImage(named: dessertData[indexPath.row].image)
    cell.dessertLabel.text = dessertData[indexPath.row].dessertName
    return cell
  }
}
