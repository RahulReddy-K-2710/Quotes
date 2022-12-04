//
//  ViewController.swift
//  Quotes
//
//  Created by Roja on 01/12/22.
//

import UIKit

class SpeakerViewController: UIViewController {
    
 //MARK: Outlets.
    @IBOutlet weak var speakerTableView: UITableView!
    
 //MARK: properties.
    private var viewModel = SpeakerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the title of screen.
        self.title = viewModel.getScreenTitle()

        
    }

  //Preapre segue to QuotesviewControoler.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quotesVC = segue.destination as? QuotesViewController {
            //Get the selected index of speaker tableview
            if let selectedIndex = speakerTableView.indexPathForSelectedRow?.row {
                //get the selected speaker from speaker array
                let selectedSpeaker = viewModel.getSpeakerAt(index: selectedIndex)
                quotesVC.viewModel.speaker = selectedSpeaker
            }
        }
    }
}

// MARK: TableView Delegate and DataSource functions
extension SpeakerViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getSpeakerCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakerCell", for: indexPath)
        if let speaker = viewModel.getSpeakerAt(index: indexPath.row) {
            cell.textLabel?.text = speaker.name
            cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 18.0)
            
            cell.imageView?.image = UIImage(named: speaker.image)
            cell.imageView?.contentMode = .scaleAspectFill
            cell.imageView?.layer.masksToBounds = true;
            cell.imageView?.layer.cornerRadius = 30;
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}


