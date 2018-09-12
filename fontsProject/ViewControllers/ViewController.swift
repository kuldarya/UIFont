import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var fontsArray: [Font] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fontsArray = FontManager.shared.getFonts()
        
        self.collectionView.reloadData()
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.fontsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fontCell", for: indexPath) as? FontCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.font = self.fontsArray[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width / 2) - 20, height: (self.view.frame.height / 4) - 25)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else {
            return
        }
        controller.font = self.fontsArray[indexPath.item]
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

