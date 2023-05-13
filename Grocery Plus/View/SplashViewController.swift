//
//  SplashViewController.swift
//  Grocery Plus
//
//  Created by ericzero on 5/14/23.
//

import UIKit
import SnapKit

class SplashViewController: UIViewController {
    
    lazy var splashImg: UIImageView = {
        let splashImg = UIImageView()
        splashImg.image = UIImage(named: "splashPhoto")
        return splashImg
    }()
    
    lazy var titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Grocery Plus"
        lbl.font = .systemFont(ofSize: 25, weight: .medium)
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(splashImg)
        view.addSubview(titleLbl)
        timerSetup()
        setConstraints()
    }

    private func setConstraints(){
        splashImg.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.height.width.equalTo(140)
        }
        
        titleLbl.snp.makeConstraints { make in
            make.top.equalTo(splashImg.snp.bottom).offset(22)
            make.centerX.equalToSuperview()
        }
    }
    
    private func timerSetup(){
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { [weak self] _ in
            guard let self = self else { return }
            let vc = TabbarViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }
}
