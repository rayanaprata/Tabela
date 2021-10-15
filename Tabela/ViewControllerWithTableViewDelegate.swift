//
//  ViewControllerWithTableViewDelegate.swift
//  Tabela
//
//  Created by Rayana Prata Neves on 15/10/21.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate {
    
    // MARK: UITabelViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        guard let detail = cell?.detailTextLabel?.text else { return }
        print("Tocou na \(indexPath.row) || Texto da Célula: \(detail) || Texto do array: \(self.titles[indexPath.row])")
    }
    
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        return UITableViewCell.EditingStyle.delete
//    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        self.titles.remove(at: indexPath.row)
        
        tableViewTable.reloadData()   // ele executa novamente o numberOfRows in sections e popula a table view novamente
    }
    
}
