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
    
    override func viewDidLoad() {
        print("got here")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath)
        
        cell.layer.borderWidth = 2
        cell.layer.borderColor = .init(red: 200/256, green: 200/256, blue: 200/256, alpha: 1)
                
        return cell
    }
    
}
