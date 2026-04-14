//
//  TableVC.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class TableVC: UIViewController {
    
    private let myTable: UITableView = {
        let myTable = UITableView()
        myTable.rowHeight = UITableView.automaticDimension
        myTable.allowsSelection = true
        myTable.register(TableCell.self, forCellReuseIdentifier: TableCell.identifier)
        myTable.translatesAutoresizingMaskIntoConstraints = false
        return myTable
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    func configureUI() {
        view.addSubview(myTable)
        
        NSLayoutConstraint.activate([
            myTable.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            myTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myTable.bottomAnchor.constraint(equalTo: view .bottomAnchor),
        ])
    }
    
    @objc func handleDescriptionTap(_ sender: UITapGestureRecognizer) {
        if let label = sender.view as? UILabel {
            label.numberOfLines = (label.numberOfLines == 0) ? 2 : 0
            myTable.beginUpdates()
            myTable.endUpdates()
        }
    }

}

extension TableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        myProductViewModel.myDataArray.count
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTable.dequeueReusableCell(withIdentifier: TableCell.identifier, for: indexPath) as? TableCell else {
            fatalError("Error while dequeue the custom cell...")
        }
//        let item = myProductViewModel.myDataArray[indexPath.row]
//        cell.setupCell (
//            title: item.title ?? "no title",
//            desc: item.description ?? "N Description",
//            imageUrl: item.thumbnail ?? ""
//        )
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDescriptionTap(_:)))
//        cell.myDesc.addGestureRecognizer(tapGesture)
//        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        navigationController?.pushViewController(DynamicVC(data: myProductViewModel.myDataArray[indexPath.row]), animated: true)
//        myTable.deselectRow(at: indexPath, animated: true)
    }
    
}
