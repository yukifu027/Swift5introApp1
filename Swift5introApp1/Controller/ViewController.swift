//
//  ViewController.swift
//  Swift5introApp1
//
//  Created by 福井祐希 on 2020/05/12.
//  Copyright © 2020 Yuki Fukui. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var onboardArray = ["1","2","3","4","5"]

    var onboardStringArray = ["誰もが発信者となった現代社会において","偏見や中傷、差別が横行して欲しくない","より多くの人たちが、より良質な情報に出会ってほしい","そして、いつか世界中の人が笑って暮らせるように","Begin"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isPagingEnabled = true
        setUpScroll()

        for i in 0...4{

            let animationView = AnimationView()
            let animation = Animation.named(onboardArray[i])
            animationView.frame = CGRect(x: CGFloat(i) * view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
            animationView.animation = animation
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            self.scrollView.addSubview(animationView)
        }
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.isNavigationBarHidden = true


    }



    func setUpScroll(){

        scrollView.delegate = self

        scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: scrollView.frame.size.height)

        for i in 0...4{

            let onboardLabel = UILabel(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: view.frame.size.height/3, width: scrollView.frame.size.width, height: scrollView.frame.size.height))

            onboardLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            onboardLabel.textAlignment = .center
            onboardLabel.text = onboardStringArray[i]
            scrollView.addSubview(onboardLabel)
        }


    }
    
    


}

