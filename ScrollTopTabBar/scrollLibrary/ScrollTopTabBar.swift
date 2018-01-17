//
//  ScrollTopTabBar.swift
//  topTabBar
//
//  Created by Ragaie alfy on 1/16/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//


import UIKit

 public class ScrollTopTabBar: UIView {

    @IBOutlet weak var viewsCollectionView: UICollectionView!
    @IBOutlet weak var buttomCollectionView: UICollectionView!
//    
//    var viewsCollectionView: UICollectionView!
//    var buttomCollectionView: UICollectionView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //MARK: tabbar parameter
    
     public var barBackgroundColor : UIColor! = UIColor.white
     public var selectColor: UIColor! = UIColor.blue

     public var tintItemColor : UIColor! = UIColor.lightGray
     public var textFont : UIFont! = UIFont.systemFont(ofSize: 12)
    
    public var heightType :  HeightType! = .heightLightItem
    public var showLineIndecator : Bool! = true
    public var barHeight : CGFloat! = 50

    
    
    
    
    
    
    
    //MARK:Variable
    public var dataSource : [TabBarItem]! = []
    public var itemDataSource : [String] = ["wqeqw","qweqwe","qwewq","wqeqwew","sds","wqeqw","qweqwe","qwewq","wqeqwew","sfsdfsdfsdsdfsdfsdfdsfds"]
    private var myPresenter : ScrollTopTabBarPresenter!
    override public init(frame : CGRect) {
        super.init(frame : frame)
        initSubviews()
        
     
    }
    
    
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
        initActionAndDelegete()
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
    public func initSubviews() {
        let bundle = Bundle(for: type(of: self))

        let nib = UINib(nibName: "ScrollTopTabBar", bundle: bundle)

        var view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView

        // to make view fit view in design you welcome.
        view.frame = self.bounds
        // Make the view stretch with containing view
        // to fit like you want in storyboard
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        // nib.contentView.frame = bounds

 
//
//        buttomCollectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.width, height: 50), collectionViewLayout: layout)
//        buttomCollectionView.tag = 11
//
//
//        viewsCollectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: barHeight, width: self.frame.width, height: self.frame.height - barHeight), collectionViewLayout: layout)
//
//
//        let bundle = Bundle(for: type(of: self))
//        let cellNib = UINib(nibName: "ButtonCell", bundle: bundle)
//            buttomCollectionView.register(cellNib, forCellWithReuseIdentifier: "ButtomCellID")
//        let cellViewNib = UINib(nibName: "ViewCell", bundle: bundle)
//            viewsCollectionView.register(cellViewNib, forCellWithReuseIdentifier: "ViewCellID")
//
//        addSubview(buttomCollectionView)
//      addSubview(viewsCollectionView)
//
        
//        var tempView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.width, height: 200))
//        tempView.backgroundColor = UIColor.red
//         addSubview(tempView)

        addSubview(view)
        
    }
    
    
    
    
    
    
    // add set data for collection View
    func initActionAndDelegete()  {
        ///MARK : Cells ID
        
        myPresenter = ScrollTopTabBarPresenter()
        myPresenter.myView = self
        
        setCollectionData()

      
    }
    
    
    
    func setCollectionData(){
        //item ID--> ButtomCellID
        //view ID--> ViewCellID
        
        /// load custom view and add it to view 
        let bundle = Bundle(for: type(of: self))
        let cellNib = UINib(nibName: "ButtonCell", bundle: bundle)
        buttomCollectionView.register(cellNib, forCellWithReuseIdentifier: "ButtomCellID")
        
        buttomCollectionView.backgroundColor = barBackgroundColor
        buttomCollectionView.delegate = myPresenter
        buttomCollectionView.dataSource = myPresenter
        var tempFrame =   CGRect.init(x:  0, y:  0, width:  self.frame.width, height: barHeight)
        buttomCollectionView.frame = tempFrame
      
        
//// collection dataViews
        let cellViewNib = UINib(nibName: "ViewCell", bundle: bundle)
        viewsCollectionView.register(cellViewNib, forCellWithReuseIdentifier: "ViewCellID")
        
        viewsCollectionView.backgroundColor =  UIColor.clear
        viewsCollectionView.delegate = myPresenter
        viewsCollectionView.dataSource = myPresenter
        
        
        
       var tempFrame2 =   CGRect.init(x:  0, y: barHeight, width:  self.frame.width, height: self.frame.height - barHeight)
        viewsCollectionView.frame = tempFrame2
       // buttomCollectionView.reloadData()
    }
    
}
