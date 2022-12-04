//
//  QuotesViewController.swift
//  Quotes
//
//  Created by Roja on 01/12/22.
//

import UIKit

class QuotesViewController: UIViewController {
    
    //Properties
    var viewModel = QuotesViewModel()
    @IBOutlet weak var quotesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the title of screen.
        self.title = viewModel.getScreenTitle()
        
        //Dynamic row height.
        quotesTableView.estimatedRowHeight = 80
        quotesTableView.rowHeight = UITableView.automaticDimension
        
    }
    
}

// MARK: TableView Delegate and DataSource functions
extension QuotesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getQuotesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuotesCell", for: indexPath)
        cell.textLabel?.text = viewModel.getQuotesAtIndex(index: indexPath.row)
        cell.textLabel?.font = UIFont(name: "Avenir-Light", size: 15.0)
        //Dynamic row height.
        cell.textLabel?.sizeToFit()
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //Dynamic row height.
        return UITableView.automaticDimension
    }
}
