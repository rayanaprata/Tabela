//
//  ViewController.swift
//  Tabela
//
//  Created by Rayana Prata Neves on 15/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        
        self.tableViewTable.translatesAutoresizingMaskIntoConstraints = false
        
        // NS vem de Next Step -> Next empresa do Steve Jobs
        NSLayoutConstraint.activate([
            
//            principais constraints:
            
//            self.tableViewTable.topAnchor         -> em cima
//            self.tableViewTable.bottomAnchor      -> em baixo
//            self.tableViewTable.trailingAnchor    -> direita
//            self.tableViewTable.leadingAnchor     -> esquerda
//            self.tableViewTable.widthAnchor       -> largura
//            self.tableViewTable.heightAnchor      -> altura
            
            self.tableViewTable.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 5),
            self.tableViewTable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5),
            self.tableViewTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5),
            self.tableViewTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5)
            //self.tableViewTable.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        self.tableViewTable.layer.cornerRadius = 20.0
        self.tableViewTable.layer.borderWidth = 2.0
        self.tableViewTable.layer.borderColor = UIColor.systemPink.cgColor
        
        self.view.layer.cornerRadius = 20
        
        // se quiser fazer um círculo o elemento precisa ser um quadrado e o corner radius precisa ser metade da altura
        
        //tableViewTable.reloadData()
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
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // normalmente aqui neste método é passado a quandiade de linhas do JSON que retornou da API
        let numberOfRows: Int = self.titles.count
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "celular")
        cell.textLabel?.text = "Maria vai com as devs"
        cell.detailTextLabel?.text = self.titles[indexPath.row].description
        
        return cell
    }
    
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
        
        tableViewTable.reloadData()   // ele executa novamente o number of rows in sections e popula a table view novamente
    }

}
