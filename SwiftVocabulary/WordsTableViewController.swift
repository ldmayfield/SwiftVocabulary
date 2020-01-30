//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_Loaner_246 on 1/29/20.
//  Copyright © 2020 Helico. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Optional", definition: "A value that contains either an underlying value or nil to indicate that the value is missing."),
        VocabularyWord(word: "Protocol", definition: "A blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality."),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        
        return cell
    }
    

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController,
            let indexPath = tableView.indexPathForSelectedRow {

            let vocabWord = vocabWords[indexPath.row]
            
               // DefinitionViewController.s = vocabWord
        }
    }


}
