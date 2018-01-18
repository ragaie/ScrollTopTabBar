# ScrollTopTabBar
scroll tab bar for ios that you just need to add item then it will fit automatic. It give you two way to heightLight selected item.

##  Installing
 Add blow for your pod file 
   ```
   pod 'ScrollTopTabBarChtar' 
   run pod update
   ```
 ScrollTopTabBarChtar
###Getting Started

A step by step series of examples that tell you have to get a development env running

1- drag UIView in storyBoard
2- set it is class to  (ScrollTopTabBar)
3- create IBOutlet from it 
```
    @IBOutlet weak var scrollTapBar: ScrollTopTabBar!
```
4- Set dataSource of it that take array form 

```
        public struct TabBarItem {
            var title : String!
            var icon : UIImage!
            var viewItem : UIView!

            init(itemTitle : String,itemIcon : UIImage,itemView : UIView) {

                title = itemTitle
                icon = itemIcon
                viewItem = itemView
            }
        }


        scrollTapBar.dataSource = [
                    TabBarItem.init(itemTitle: "Home", itemIcon: UIImage.init(named: "house")!, itemView: (viewController1?.view)!)]

```

## Propety that you can change it in it 

  ```
         scrollTapBar.showLineIndecator = false
         scrollTapBar.barHeight = 50
         scrollTapBar.barBackgroundColor  = UIColor.lightGray
         scrollTapBar.selectColor = UIColor.brown
         scrollTapBar.tintItemColor  = UIColor.green
         scrollTapBar.textFont = UIFont.systemFont(ofSize: 12)
         scrollTapBar.heightType  = HeightType.heightLightBackground  
         
         //last one refer to selection type that sould be one of 
         
         public enum HeightType {
            case heightLightItem
            case heightLightBackground 
         }
  ``` 

  
## you should get like this result 

![Screenshot](https://github.com/ragaie/ScrollTopTabBar/blob/master/ScrollTopTabBar/screen%20shot%20/Screen%20Shot%202018-01-18%20at%202.42.56%20PM.png)
![Screenshot](https://github.com/ragaie/ScrollTopTabBar/blob/master/ScrollTopTabBar/screen%20shot%20/Screen%20Shot%202018-01-18%20at%202.44.14%20PM.png)
![Screenshot](https://github.com/ragaie/ScrollTopTabBar/blob/master/ScrollTopTabBar/screen%20shot%20/Screen%20Shot%202018-01-18%20at%202.47.51%20PM.png)
![Screenshot](https://github.com/ragaie/ScrollTopTabBar/blob/master/ScrollTopTabBar/screen%20shot%20/Screen%20Shot%202018-01-18%20at%202.44.14%20PM.png)


## Author

* **Ragaie alfy Fahmey**  - [LinkedIn](www.linkedin.com/in/ragaie-alfy)
