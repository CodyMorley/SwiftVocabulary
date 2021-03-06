//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Cody Morley on 3/16/20.
//  Copyright © 2020 Cody. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "var", definition: "a variable value."), VocabularyWord(word: "let", definition: "a keyword for a constant value.")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabularyWord = vocabWords[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = vocabularyWord.word
        return cell
    }
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let vocabDetailVC = segue.destination as? DefinitionViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            vocabDetailVC.vocabWord = vocabWords[indexPath.row]
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
