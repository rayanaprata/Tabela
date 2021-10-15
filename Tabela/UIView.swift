//
//  UIView.swift
//  Tabela
//
//  Created by Rayana Prata Neves on 15/10/21.
//

import Foundation
import UIKit

extension UIView {
    func createConstraintsTable(with tableView: UITableView,
                                        topAnchor: NSLayoutYAxisAnchor,
                                        topConstant: CGFloat,
                                        bottomAnchor: NSLayoutYAxisAnchor,
                                        bottomConstant: CGFloat,
                                        trailingAnchor: NSLayoutXAxisAnchor,
                                        trailingConstant: CGFloat,
                                        leadingAnchor: NSLayoutXAxisAnchor,
                                        leadingConstant: CGFloat,
                                        widthAnchor: CGFloat? = nil,
                                        heightAnchor: CGFloat? = nil
    ) {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        // NS vem de Next Step -> Next empresa do Steve Jobs
        NSLayoutConstraint.activate([
            
    //            principais constraints:
            
    //            tableView.topAnchor         -> em cima
    //            tableView.bottomAnchor      -> em baixo
    //            tableView.trailingAnchor    -> direita
    //            tableView.leadingAnchor     -> esquerda
    //            tableView.widthAnchor       -> largura
    //            tableView.heightAnchor      -> altura
            
            tableView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant)
            // self.tableViewTable.widthAnchor.constraint(equalToConstant: widthAnchor)
        ])
        
    }
}
