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

        var identifier = ""

        switch indexPath.row {
        case 0, 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45:
            identifier = "Cell1"
        case 1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46:
            identifier = "Cell2"
        case 2, 5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35, 38, 41, 44:
            identifier = "Cell3"
        default:
            assertionFailure("invalid")
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = prefetures.prefecturesArray[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"

        return cell
    }
}
