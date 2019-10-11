//
//  ViewController.swift
//  COLLECTION
//
//  Created by 2020-1 on 9/11/19.
//  Copyright © 2019 ioslabv. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {
    
    var peliculas:[pelicula] =  [pelicula(poster:"1",titulo:"AVENGERS",horario:"CUPO:34"),pelicula(poster:"2",titulo:"ALITA",horario: "CUPO:32"),pelicula(poster: "3", titulo: "TITANIC", horario: "CUPO:30"),pelicula(poster:"4",titulo:"EL BROMAS",horario:"CUPO:45"),pelicula(poster:"4",titulo:"EL BROMAS 4DX",horario:"CUPO:37"),pelicula(poster:"4",titulo:"EL BROMAS 3D",horario:"CUPO:24"),pelicula(poster:"7",titulo:"AVATAR",horario:"CUPO:56"),pelicula(poster:"8",titulo:"TODOS CAEN",horario:"CUPO:29")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuadrooo", for: indexPath)as!peliculaCollectionViewCell
        
        cell.NOMBRE.text = peliculas[indexPath.item].titulo
        cell.POSTER.image = UIImage(named: peliculas[indexPath.item].poster)
        cell.Horario.text = peliculas[indexPath.item].horario
        
        
        cell.backgroundColor = .lightGray
        
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

