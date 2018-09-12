import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var exampleLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    
    var font: Font?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let font = self.font {
            self.titleLabel.text = font.familyName
            self.descriptionLabel.text = font.fontName
            self.exampleLabel.text = "Example"
            self.exampleLabel.font = UIFont(name: font.fontName, size: 17.0)
            self.exampleLabel.textColor = .green
            self.sizeLabel.text = "Font size: \(self.exampleLabel.font.pointSize)"
        }
    }

}
