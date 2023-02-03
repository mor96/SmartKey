//
//  ViewController.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var backview: UIView!
    @IBOutlet weak var popview: UIView!
    @IBAction func addAction(_ sender: UIButton) {
        hide()
    }
    
    init(){
        super.init(nibName: "Popup", bundle: nil)
        self.modalPresentationStyle = .overFullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView(){
        self.view.backgroundColor = .clear
        // Do any additional setup after loading the view.
    }
    
    func appear(){
        self.present(self, animated: false) {
            self.show()
        }
    }
    
    private func show(){
        UIView.animate(withDuration: 1, delay: 0.1){
            self.backview.alpha = 1
            self.popview.alpha = 1
        }
    }
    
    func hide(){
        UIView.animate(withDuration: 1, delay: 0.0) {
            self.backview.alpha = 0
            self.popview.alpha = 0
        } completion: { _ in
            self.dismiss(animated: false)
            self.removeFromParent()
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
