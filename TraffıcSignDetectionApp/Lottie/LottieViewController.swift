//
//  LottieViewController.swift
//  TraffıcSignDetectionApp
//
//  Created by Kadır  Yıldız on 11.05.2022.
//

import Foundation
import UIKit
import Lottie

class LottieViewConroller : UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var ImageButton: UIButton!
    @IBOutlet weak var cameraButton: UIButton!
    
    var animationList = [AnimationModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createAnimationsList()
        ImageButton.addShadow(radius: 7)
        ImageButton.alpha = 0.5
        ImageButton.layer.cornerRadius = 12
        ImageButton.isEnabled = false
        cameraButton.addShadow(radius: 7)
        cameraButton.alpha = 0.5
        cameraButton.layer.cornerRadius = 12
        cameraButton.isEnabled = false
        
        
    }
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    func createAnimationsList() {
        self.animationList = [ AnimationModel(animationName: "brick", descriptionName: "Acaba bu işaret ne anlama geliyor. Kırmızı renkli kesin önemli bir işaret?"),AnimationModel(animationName: "concept", descriptionName: "Bu araç neden o direğin yanında durdu ve sonra hareket etti. Yanında durduğu şey de ne acaba?"), AnimationModel(animationName: "downhill", descriptionName: "%10 ne demek acaba yine bir şey mi hesaplayacağız yoksa??"),AnimationModel(animationName: "pedestrian", descriptionName: "Bu yürüyen kişi de kim ve neyin üzerinde yürüyor??"),AnimationModel(animationName: "two-way", descriptionName: "Bu oklarda neyin nesi ?? Evet bütün soruların cevaplarını öğrenmek için Uygulamayı Başlat tuşuna basıp telefonunu sola döndür.") ]
        
        collectionView.reloadData()
    }
    @IBAction func skipBtnPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "sendImage", sender: self)
    }
    @IBAction func imageBtnPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "sendCamera", sender: self)
    }
    
    
}
extension LottieViewConroller: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.animationList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let onboardingCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCollectionViewCell
        let selectedItem = self.animationList[indexPath.item]
        onboardingCell.prepareCell(item: selectedItem)
        onboardingCell.animationView.loopMode = .loop
        return onboardingCell
    }
    // Bu kısımda aşağıdaki sayfa kontrol çubuğunun kodları yer almaktadır
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let witdh = scrollView.frame.width - (scrollView.contentInset.left*2)
        let index = scrollView.contentOffset.x / witdh
        let roundedIndex = round(index)
        self.pageControl?.currentPage = Int(roundedIndex)
        
        if self.pageControl?.currentPage == 0 {
            ImageButton.alpha = 0.5
            ImageButton.isEnabled = false
            cameraButton.alpha = 0.5
            cameraButton.isEnabled = false
        } else if self.pageControl?.currentPage == 1 {
            ImageButton.alpha = 0.5
            ImageButton.isEnabled = false
            cameraButton.alpha = 0.5
            cameraButton.isEnabled = false
        }else if self.pageControl?.currentPage == 2 {
            ImageButton.alpha = 0.5
            ImageButton.isEnabled = false
            cameraButton.alpha = 0.5
            cameraButton.isEnabled = false
        }else if self.pageControl?.currentPage == 3 {
            ImageButton.alpha = 0.5
            ImageButton.isEnabled = false
            cameraButton.alpha = 0.5
            cameraButton.isEnabled = false
        }else if self.pageControl?.currentPage == 4 {
            ImageButton.alpha = 1.0
            ImageButton.isEnabled = true
            cameraButton.alpha = 1.0
            cameraButton.isEnabled = true
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width , height: collectionView.frame.height)
    }
    
    
}

