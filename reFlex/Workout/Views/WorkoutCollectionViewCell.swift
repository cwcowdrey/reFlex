//
//  WorkoutCollectionViewCell.swift
//  reFlex
//
//  Created by Christopher Cowdrey on 2/28/21.
//

import Foundation
import UIKit

class WorkoutCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var exerciseImage: UIImageView!
    
    func setupCell(with workout: Workout) {
        self.titleLabel.text = workout.title
        self.exerciseImage.image = UIImage(systemName: workout.image)
    }
    
    
    
}
