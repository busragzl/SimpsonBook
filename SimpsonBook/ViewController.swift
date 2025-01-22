//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Büşra Gazel on 22.01.2025.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

   
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        //Simpson Object
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob:"Nuclear Safety", simpsonImage:UIImage(named: "homer")!)
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob:"House Wife", simpsonImage:UIImage(named: "marge")!)
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonJob:"Student", simpsonImage:UIImage(named: "bart")!)
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob:"Student", simpsonImage:UIImage(named: "lisa")!)
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJob:"Baby", simpsonImage:UIImage(named: "maggie")!)
        
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return mySimpsons.count // Kaç satırlı olsun
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell() // Hücre oluşturma
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    
    


}

