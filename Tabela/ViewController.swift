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
        self.createConstraintsTable(with: self.tableViewTable)
        
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
    
    private func createConstraintsTable(with tableView: UITableView) {
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
            
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 5),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5)
            //self.tableViewTable.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        tableView.layer.cornerRadius = 20.0
        tableView.layer.borderWidth = 2.0
        tableView.layer.borderColor = UIColor.systemPink.cgColor
        
        self.view.layer.cornerRadius = 20
        
        // se quiser fazer um círculo o elemento precisa ser um quadrado e o corner radius precisa ser metade da altura
    }
    
}
