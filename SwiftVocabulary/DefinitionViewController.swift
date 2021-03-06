//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Lambda_School_Loaner_246 on 1/29/20.
//  Copyright © 2020 Helico. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var DefinitionLabel: UILabel!

    @IBOutlet weak var DefinitionText: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let VocabWord = vocabWord {
            DefinitionText.text = VocabWord.word
            DefinitionLabel.text = VocabWord.definition
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
