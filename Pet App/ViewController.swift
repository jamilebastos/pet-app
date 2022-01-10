import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalsCollectionView.delegate = self
        animalsCollectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
}
