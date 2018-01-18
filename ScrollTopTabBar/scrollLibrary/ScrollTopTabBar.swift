//
//  ScrollTopTabBar.swift
//  topTabBar
//
//  Created by Ragaie alfy on 1/16/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//


import UIKit

@IBDesignable  public class ScrollTopTabBar: UIView {

    @IBOutlet weak var viewsCollectionView: UICollectionView!
    @IBOutlet weak var buttomCollectionView: UICollectionView!
    
    @IBOutlet weak var heightConstrain: NSLayoutConstraint!
    
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

   public var barHeight : CGFloat! = 50 {
        didSet{
            
            setCollectionData()
        }
    }
    
    
    
    
    
    
    
    //MARK:Variable
    public var dataSource : [TabBarItem]! = []
 
    private var myPresenter : ScrollTopTabBarPresenter!
    override public init(frame : CGRect) {
        super.init(frame : frame)
        initSubviews()
        initActionAndDelegete()
     
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

        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView

        // to make view fit view in design you welcome.
        view.frame = self.bounds
        // Make the view stretch with containing view
        // to fit like you want in storyboard
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
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
        


        
//// collection dataViews
        let cellViewNib = UINib(nibName: "ViewCell", bundle: bundle)
        viewsCollectionView.register(cellViewNib, forCellWithReuseIdentifier: "ViewCellID")
        
        viewsCollectionView.backgroundColor =  UIColor.clear
        viewsCollectionView.delegate = myPresenter
        viewsCollectionView.dataSource = myPresenter
        
        //update layout in storyBoard
        
        heightConstrain.constant = barHeight
        
        self.setNeedsDisplay()
        
    }
    
    
    

    
}
