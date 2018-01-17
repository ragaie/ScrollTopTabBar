//
//  ViewController.swift
//  ScrollTopTabBar
//
//  Created by Ragaie alfy on 1/17/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollTapBar: ScrollTopTabBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var viewController1 = self.storyboard?.instantiateViewController(withIdentifier: "1")
        var viewController2 = self.storyboard?.instantiateViewController(withIdentifier: "2")
        var viewController3 = self.storyboard?.instantiateViewController(withIdentifier: "3")
        var viewController4 = self.storyboard?.instantiateViewController(withIdentifier: "4")
        
        scrollTapBar.showLineIndecator = false
        scrollTapBar.dataSource = [
            TabBarItem.init(itemTitle: "first", itemIcon: UIImage.init(named: "house")!, itemView: (viewController1?.view)!),
            TabBarItem.init(itemTitle: "secand", itemIcon: UIImage.init(named: "Location")!, itemView: (viewController2?.view)!),
            TabBarItem.init(itemTitle: "third", itemIcon: UIImage.init(named: "dee")!, itemView: (viewController3?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!),TabBarItem.init(itemTitle: "Forth", itemIcon: UIImage.init(named: "house")!, itemView: (viewController4?.view)!)]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

