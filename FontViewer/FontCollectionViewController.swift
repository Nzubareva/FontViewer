//
//  FontCollectionViewController.swift
//  FontViewer
//
//  Created by Natallia Zubareva on 22.07.2018.
//  Copyright © 2018 Natallia Zubareva. All rights reserved.
//

import UIKit

private let reuseIdentifier = "FontCell"

class FontCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var fontNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UIFont.familyNames.forEach({familyName in
            fontNames.append(contentsOf: UIFont.fontNames(forFamilyName: familyName))
        })
        //fontNames.forEach({print($0)})
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return fontNames.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FontCollectionViewCell
    
        // Configure the cell
        let font = UIFont(name: fontNames[indexPath.row], size: 20.0)
        cell.titleLabel.text = font?.familyName
        cell.titleLabel.font = font
        cell.titleLabel.adjustsFontSizeToFitWidth = true
        cell.descriptionLabel.text = "\(font!.fontName)"
        cell.descriptionLabel.adjustsFontSizeToFitWidth = true
        cell.cellFont = font
        //font?.style
        return cell
    }
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.bounds.size.width-20) / 2
        let height = (self.view.bounds.size.height-80) / 4
        return CGSize(width: width, height: height)
    }
    
    // MARK: segue handling
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fontDetailsSegue" {
            let dest = segue.destination as! ViewController
            let cell = sender as! FontCollectionViewCell
            dest.font = cell.cellFont
        }
    }
}
