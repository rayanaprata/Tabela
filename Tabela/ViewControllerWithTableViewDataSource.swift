//
//  ViewControllerWithTableViewDelegate.swift
//  Tabela
//
//  Created by Rayana Prata Neves on 15/10/21.
//

import UIKit
import Foundation

extension ViewController: UITableViewDataSource {
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // normalmente aqui neste método é passado a quantiade de linhas do JSON que retornou da API
        let numberOfRows: Int = self.titles.count
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "celular")
        cell.textLabel?.text = "Maria vai com as devs"
        cell.detailTextLabel?.text = self.titles[indexPath.row].description
        
        return cell
    }

}
