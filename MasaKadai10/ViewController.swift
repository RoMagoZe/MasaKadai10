//
//  ViewController.swift
//  MasaKadai10
//
//  Created by Mina on 2023/02/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    private let prefetures = Prefectures()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 47
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let identifier: String

        switch indexPath.row % 3 {
        case 0:
            identifier = "Cell1"
        case 1:
            identifier = "Cell2"
        case 2:
            identifier = "Cell3"
        default:
            fatalError("invalid")
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = prefetures.prefecturesArray[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"

        return cell
    }
}
