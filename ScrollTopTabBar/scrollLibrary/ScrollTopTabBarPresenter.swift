//
//  ScrollTopTabBarPresenter.swift
//  topTabBar
//
//  Created by Ragaie alfy on 1/16/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

import UIKit

class ScrollTopTabBarPresenter: NSObject,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {

    var myView : ScrollTopTabBar!
    var selectIndex : IndexPath!
    var selectCell   : UICollectionViewCell!
    var scrollSecand : Bool! = false
    
    override init() {
        
        super.init()
    }
    
    
    
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if  collectionView.tag == 11{
            
            var tempNsstring = NSString.init(string: myView.dataSource[indexPath.row].title)
            
            
            var calCulateSizze : CGSize! = tempNsstring.size(withAttributes: nil)
            calCulateSizze.height = myView.barHeight
            // make sure width not less than 50
           
            
            if myView.dataSource.count <= 5{
                
                calCulateSizze.width = myView.frame.width / CGFloat.init(myView.dataSource.count)
                
            }
           else if ( calCulateSizze.width + 20) < 50 {
                calCulateSizze.width = 50
                
            }
            else{
                
                calCulateSizze.width =  calCulateSizze.width + 20

                
            }
            
            return calCulateSizze
            
        }
        
        
        return CGSize.init(width: collectionView.frame.width, height: collectionView.frame.height)
        // return [(NSString*)[arrayOfStats objectAtIndex:indexPath.row] sizeWithAttributes:NULL];
        //return CGSize(width: 80, height: 95)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        // let leftRightInset = self.myView.view.frame.size.width / 14.0
        
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myView.dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView.tag == 11{
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "ButtomCellID", for: indexPath)
            let titleLabel = cell.contentView.viewWithTag(11) as! UILabel
            let indecatorLabel = cell.contentView.viewWithTag(12) as! UILabel
            let imageIcon = cell.contentView.viewWithTag(13) as! UIImageView
            
            
            /// rest data for cell
//            cell.backgroundColor = UIColor.clear
//            indecatorLabel.isHidden = true
//            titleLabel.text = ""
//
            deHeightLightCell(indexPath: indexPath, cell: cell)
            
            /// cell setting 
            titleLabel.textColor = myView.tintItemColor
            indecatorLabel.backgroundColor = myView.tintItemColor
            titleLabel.font = myView.textFont
            titleLabel.textColor = myView.tintItemColor
            
          
// set data to item
            titleLabel.text = myView.dataSource[indexPath.row].title
            if  myView.dataSource[indexPath.row].icon != nil {
                //imageIcon.image = myView.dataSource[indexPath.row].icon
                
                imageIcon.image = (myView.dataSource[indexPath.row].icon).imageWithColor(color: myView.tintItemColor)

            }
    /////////---> select first item
            
            if selectIndex == nil {
                selectIndex = indexPath
                selectCell = cell
                
            }
            if indexPath == selectIndex {
                
                heightLightCell(indexPath: indexPath,cell : cell)

            }
//            if indexPath.row == 0  && selectIndex == nil{
//                heightLightCell(indexPath: indexPath,cell : cell)
//            }
            
             return cell
        }
        
        
        
        let cell1 =  collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCellID", for: indexPath)
        
        if myView.dataSource[indexPath.row].viewItem != nil {
       
            //get view and set it in cellview 
            let viewToShow = myView.dataSource[indexPath.row].viewItem
            //update frame of view befor add it to loaction
            viewToShow?.frame = CGRect.init(x: 0, y: 0, width: cell1.frame.width, height: cell1.frame.height
            )
            cell1.addSubview(viewToShow!)
        }
        return cell1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        

        if collectionView.tag == 11{
            if selectIndex != nil {
                
                //if   var cell1 = myView.buttomCollectionView.cellForItem(at: selectIndex){
                    
                    deHeightLightCell(indexPath: selectIndex, cell: selectCell)
                //}
            }
            
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            
            var cell : UICollectionViewCell! = collectionView.cellForItem(at: indexPath)
            
            heightLightCell(indexPath: indexPath, cell: cell)
             selectIndex = indexPath
            myView.viewsCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)

        }
        else{

           // selectItem(myView.buttomCollectionView, didSelectItemAt: indexPath)

        }
        
       

        
        
        
        
    }

    
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        
        
        
        if collectionView.tag == 22{
           
          //  selectItem(myView.buttomCollectionView, didSelectItemAt: collectionView.indexPathsForVisibleItems.first!)
            
            
        }
        
        
    }

    
 

    func heightLightCell(indexPath : IndexPath,cell : UICollectionViewCell)  {
       
        selectCell = cell
        //var cell : UICollectionViewCell! = myView.buttomCollectionView.cellForItem(at: indexPath)

        let titleLabel = cell.contentView.viewWithTag(11) as! UILabel
        let indecatorLabel = cell.contentView.viewWithTag(12) as! UILabel
        let imageIcon = cell.contentView.viewWithTag(13) as! UIImageView
       
        
         if myView.heightType == .heightLightBackground{
            cell.backgroundColor = myView.selectColor
         }
         else{
            if  myView.dataSource[indexPath.row].icon != nil {
                //imageIcon.image = myView.dataSource[indexPath.row].icon
                
                imageIcon.image = (myView.dataSource[indexPath.row].icon).imageWithColor(color: myView.selectColor)
            }
            indecatorLabel.backgroundColor = myView.selectColor
            titleLabel.textColor = myView.selectColor
            
            
        }
        if myView.showLineIndecator  {
            indecatorLabel.isHidden = false
            
            indecatorLabel.shakeIndecator()
            
        }
        
    }
    
    
    func deHeightLightCell(indexPath : IndexPath,cell : UICollectionViewCell)  {
      
            let titleLabel = cell.contentView.viewWithTag(11) as! UILabel
            let indecatorLabel = cell.contentView.viewWithTag(12) as! UILabel
            let imageIcon = cell.contentView.viewWithTag(13) as! UIImageView
        
        if myView.heightType == .heightLightBackground{
            cell.backgroundColor = UIColor.clear
        }
        else {
            if  myView.dataSource[indexPath.row].icon != nil {

                imageIcon.image = (myView.dataSource[indexPath.row].icon).imageWithColor(color: myView.tintItemColor)
            }
            indecatorLabel.backgroundColor = myView.tintItemColor
            titleLabel.textColor = myView.tintItemColor
        }
        // check if user want line or not
        if myView.showLineIndecator {
            indecatorLabel.isHidden = true

            
        }
        
    }
    
}




