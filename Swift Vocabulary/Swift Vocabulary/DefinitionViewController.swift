//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Cody Morley on 3/16/20.
//  Copyright © 2020 Cody. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if let word = vocabWord {
            Word.text = word.word
            Definition.text = word.definition
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Word: UILabel!
    
    @IBOutlet weak var Definition: UITextView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
