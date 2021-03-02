//
//  WorkoutViewController.swift
//  reFlex
//
//  Created by Christopher Cowdrey on 2/28/21.
//

import Foundation
import UIKit

class WorkoutViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var workouts: [Workout] = [Workout(title: "biceps", image: "camera.rotate.fill"), Workout(title: "legs", image: "camera.rotate.fill"), Workout(title: "gains", image: "camera.rotate.fill"), Workout(title: "nothing", image: "camera.rotate.fill"), Workout(title: "knees", image: "camera.rotate.fill")]
    
    override func viewDidLoad() {
        print("got here")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Workout"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let workout = workouts[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! WorkoutCollectionViewCell
        
        cell.setupCell(with: workout)
        
        cell.layer.borderWidth = 2
        cell.layer.borderColor = .init(red: 200/256, green: 200/256, blue: 200/256, alpha: 1)
                
        return cell
    }
    
}
