//
//  IchiranViewController.swift
//  GolfWear
//
//  Created by DaichiSaito on 2017/01/06.
//  Copyright © 2017年 DaichiSaito. All rights reserved.
//

import UIKit

class IchiranViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    /* viewの読み込み */
//    override func loadView() {
//        let nib = UINib(nibName: "IchiranView", bundle: nil)
//        self.view = nib.instantiate(withOwner: nil, options: nil)[0] as! UIView
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let ichiranView = self.view as! IchiranView
        // デリゲート設定
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // 2カラム
        let width: CGFloat = super.view.frame.width / 2 - 2
        let height: CGFloat = width
        
        return CGSize(width: width, height: height) // The size of one cell
//        let cellSize:CGFloat = self.view.frame.size.width/2-2
//        // 正方形で返すためにwidth,heightを同じにする
//        return CGSize(width: cellSize, height: cellSize)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("collectionViewの設定開始")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath as IndexPath) as! MyCollectionViewCell
        
        return cell
    }
    
    // セルの数を返す
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
