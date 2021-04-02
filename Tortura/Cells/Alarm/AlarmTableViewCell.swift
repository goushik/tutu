//
//  AlarmTableViewCell.swift
//  Tortura
//
//  Created by Goushik Kumar on 31/01/21.
//

import UIKit

//let gradient = CAGradientLayer()
//gradient.type = .axial
//gradient.colors = [
//    UIColor(red: 255, green: 175, blue: 189, alpha: 1).cgColor,
//    UIColor(red: 255, green: 195, blue: 160, alpha: 1).cgColor
//]
//gradient.startPoint = CGPoint(x: 0, y: 0)
//gradient.endPoint = CGPoint(x: 1, y: 1)
//gradient.locations = [0, 0.5]

class AlarmTableViewCell: UITableViewCell {
    
    @IBOutlet weak var daysCollectionView: UICollectionView!
//    @IBOutlet var gradientView: UIView!
    @IBOutlet var backgroundVisualView: UIVisualEffectView!
//    lazy var gradient: CAGradientLayer = {
//        let gradient = CAGradientLayer()
//        gradient.type = .axial
//        gradient.colors = [
//            UIColor(red: 255/255, green: 195/255, blue: 160/255, alpha: 1).cgColor,
//            UIColor(red: 255/255, green: 175/255, blue: 189/255, alpha: 1).cgColor,
//
//        ]
//        gradient.startPoint = CGPoint(x: 0, y: 0)
//        gradient.endPoint = CGPoint(x: 1, y: 1)
//        gradient.locations = [0, 0.5]
//        return gradient
//    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        daysCollectionView.delegate = self
        daysCollectionView.dataSource = self
        daysCollectionView.register(UINib(nibName: "DaysCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DaysCollectionViewCell")

        backgroundVisualView.layer.masksToBounds = true
        backgroundVisualView.layer.cornerRadius = 12
    }
    
    override func layoutSubviews() {
        superview?.layoutSubviews()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.gradient.frame = self.gradientView.bounds
//            self.gradientView.layer.addSublayer(self.gradient)
//        }

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension AlarmTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DaysCollectionViewCell", for: indexPath) as! DaysCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (backgroundVisualView.frame.width - 24)/7, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        .zero
    }
    
    
}
