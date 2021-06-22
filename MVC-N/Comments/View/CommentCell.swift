//
//  CommentCell.swift
//  MVC-N
//
//  Created by Егор Шкарин on 14.06.2021.
//

import Foundation
import UIKit

class CommentCell: UITableViewCell {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var label: UILabel!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
