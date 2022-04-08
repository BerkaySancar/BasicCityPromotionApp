//
//  ViewController.swift
//  SehirTanitimUygulamasi
//
//  Created by Berkay Sancar on 8.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var citiesArr = [Cities]()
    
    var userChoice : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let istanbul = Cities(name: "İstanbul", explanation: UITextView(), image: UIImage(named: "istanbul1")!)
        
        let ankara = Cities(name: "Ankara", explanation: UITextView(), image: UIImage(named: "ankara")!)
        
        let izmir = Cities(name: "İzmir", explanation: UITextView(), image: UIImage(named: "izmir1")!)
        
        let kars = Cities(name: "Kars", explanation: UITextView(), image: UIImage(named: "kars1")!)
        
        let antalya = Cities(name: "Antalya", explanation: UITextView(), image: UIImage(named: "antalya1")!)
        
        
        citiesArr = [istanbul,ankara,izmir,kars,antalya]
     
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citiesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = citiesArr[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
        citiesArr.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userChoice = citiesArr[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCity = userChoice
            
        }
    }
    
    

}

