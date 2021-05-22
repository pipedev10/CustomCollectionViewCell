//
//  CustomCollectionViewCell.swift
//  CustomCollectionViewCell
//
//  Created by Pipe Carrasco on 22-05-21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .lightGray
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLabel.frame = CGRect(x: 5,
                               y: contentView.frame.size.height-50,
                               width: contentView.frame.size.width-10,
                               height: 50)
        
        myImageView.frame = CGRect(x: 5,
                               y: 0,
                               width: contentView.frame.size.width-10,
                               height: contentView.frame.size.height-50)
    }
    
    public func configure(label: String, imageName: String){
        myLabel.text = label
        myImageView.image = UIImage(named: imageName)
    }
    
    override func prepareForReuse() {
        myLabel.text = nil
        myImageView.image = nil
    }
}
