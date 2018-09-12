import UIKit

class FontCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    var font: Font? {
        didSet {
            self.titleLabel.text = font?.familyName
            self.descriptionLabel.text = font?.fontName
            
            if let fontName = font?.fontName {
                self.titleLabel.font = UIFont(name: fontName, size: 20.0)
            }
        }
    }
    
}
