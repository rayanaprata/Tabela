//
//  ViewController.swift
//  Tabela
//
//  Created by Rayana Prata Neves on 15/10/21.
//

import UIKit

class ViewController: UIViewController {

    // Precisamos criar uma UITableView
    // -> É preciso dizer a Quantidade de Linhas que essa tabela vai ter
    // -> Depois definir a célula (UITableViewCell) da tabela -> Que herda da UIView
    
    // DELEGATE -> manipular o objeto
    // DATA SOURCE -> inserir/deletar/atualizar os dados
    
    // MARK: Properties
    var tableViewTable = UITableView()
    var titles: [String] = []
    
    // MARK: Outlets
    
    // MARK: Initialization
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: Actions
    
    // MARK: Methods
    private func setupUI() {
        
        self.view.backgroundColor = UIColor(red: 1.00, green: 0.68, blue: 0.74, alpha: 1.00)
        self.insertTitlesIntoArray()
        
        //self.tableViewTable = UITableView(frame: self.view.bounds)
        //self.tableViewTable.frame = self.view.bounds
        //self.tableViewTable.frame = CGRect(x: 50, y: 50, width: 120, height: 200)
        
        // só é possível ligar alguma coisa na constraint se o objeto estiver dentro da view
        
        self.tableViewTable.dataSource = self
        self.tableViewTable.delegate = self
        
        self.view.addSubview(self.tableViewTable) // adicionando a tabela na view

        self.tableViewTable.createConstraintsTable(with: self.tableViewTable,
                                    topAnchor: self.view.topAnchor,
                                    topConstant: 5,
                                    bottomAnchor: self.view.bottomAnchor,
                                    bottomConstant: -5,
                                    trailingAnchor: self.view.trailingAnchor,
                                    trailingConstant: -5,
                                    leadingAnchor: self.view.leadingAnchor,
                                    leadingConstant: 5)
        
        self.tableViewTable.layer.cornerRadius = 20.0
        self.tableViewTable.layer.borderWidth = 2.0
        self.tableViewTable.layer.borderColor = UIColor.systemPink.cgColor
        
        self.view.layer.cornerRadius = 20
        
        // se quiser fazer um círculo o elemento precisa ser um quadrado e o corner radius precisa ser metade da altura
    }
    
    private func insertTitlesIntoArray() {
        self.titles = [
            "Caroline",
            "Rayana",
            "Jackeline",
            "Mabel",
            "Beatriz"
        ]
        
        self.titles.append("Elisa")
        self.titles.append("Amanda")
    }
    
}
