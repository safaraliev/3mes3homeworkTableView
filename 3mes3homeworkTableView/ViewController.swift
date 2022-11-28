//
//  ViewController.swift
//  3mes3homeworkTableView
//
//  Created by Нуридин Сафаралиев on 25/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var adressTableView = ["Мой дом: 7 микрорайон 20 дом", "Geek-Tech: бизнес-центр Victory, 12 этаж", "Театр Оперы и Балета: Юсупа Абдрахманова, 167", "​Тоголок Молдо, 3", "​улица Максима Горького, 1г"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "adress_cell")
        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adressTableView.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "adress_cell", for: indexPath)
        cell.textLabel?.text = "\(adressTableView[indexPath.row])"
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
