//
//  ViewController.swift
//  TheLight
//
//  Created by Владимир on 02.05.2021.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn = false
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        }

    fileprivate func updateUI() {
        
        if isLightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        } // можно так
        
        view.backgroundColor = isLightOn ? .white : .black
    } // можно так (короткая версия)
    
    //MARK: - Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        updateUI()
    }
}
