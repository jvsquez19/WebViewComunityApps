//
//  TableViewController.swift
//  Comunidad de Moviles AppViewer
//
//  Created by Jafeth  Vásquez on 4/8/17.
//  Copyright © 2017 Jafeth Vásquez. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var aplicationsList:[aplication]!
    
    override func viewDidLoad() {
        aplicationsList = [aplication(name: "Transportec",url:"http://172.19.32.10/transporTec/",image: UIImage(named: "trasnsportes.png")!),aplication(name: "InfoTec",url:"http://172.19.32.10/infoTec/",image: UIImage(named:"smartphone.png")!)]
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aplicationsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let app = aplicationsList[indexPath.row]
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        //cell.appImage = app.image
        cell.imageView!.layer.cornerRadius = (cell.imageView!.frame.size.width)
        cell.imageView?.clipsToBounds = true;
        cell.appImageView.image = app.image
        cell.nameView.text = app.name
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "openPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "openPage"){
            let upcoming:ViewController = segue.destination as! ViewController;
            let indexPath = self.tableView.indexPathForSelectedRow
            let selected = self.aplicationsList[(indexPath?.row)!]
            upcoming.aplicationUrl = selected.url

            
        }
    }
    
    
}
