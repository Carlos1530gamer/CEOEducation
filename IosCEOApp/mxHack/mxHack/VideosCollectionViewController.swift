//
//  VideosCollectionViewController.swift
//  mxHack
//
//  Created by Usuario invitado on 8/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit
import AVKit
private let reuseIdentifier = "Cell"

class VideosCollectionViewController: UICollectionViewController {
  
    @IBAction func coin(_ sender: Any) {
        let AceptarClousure = { (_ action: UIAlertAction) -> Void in
            
        }
        
        let optionController = UIAlertController(title: "Usted esta apoyando al usuario a subir mas contenido", message: "Esta accion es totalmente gratuita", preferredStyle: .alert)
        
        let Aceptar = UIAlertAction(title: "Aceptar", style: .default, handler: AceptarClousure)
        optionController.addAction(Aceptar)
        
        present(optionController, animated: true, completion: nil)
    }
    @IBOutlet weak var imagen: UIImageView!
    
    var materia1: String = ""
    var videos = ["Calculo","Algebra","Fisica"]
    
    var derivadas = ["Derivadas trigonometricas", "Derivadas parciales", "Introduccion a derivadas"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print(materia1)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
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
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ItemCollectionViewCell
        
        
        cell.imagen.image = UIImage(named: derivadas[indexPath.row])
        cell.label.adjustsFontSizeToFitWidth = true
        cell.label.text = derivadas[indexPath.row]
        

        cell.Boton.addTarget(self, action: #selector(playVideo), for: .touchUpInside)
    
        // Configure the cell
    
        return cell
    }

    @objc func playVideo(){
        if  let path = Bundle.main.path(forResource: "derivada1", ofType: "mp4"){
            let video = AVPlayer(url : URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            self.present(videoPlayer,animated: true, completion: {
                videoPlayer.player?.play()
            })
            
        }
    
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

}
