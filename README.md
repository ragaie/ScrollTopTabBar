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
4- Set dataSource of it that take array form  TabBarItem

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

1- for remove line indecator in selected item 
  ```
         scrollTapBar.showLineIndecator = false
   ```
2- Change hight of tabBar 
```
         scrollTapBar.barHeight = 50
```
3- change background color 
```
         scrollTapBar.barBackgroundColor  = UIColor.lightGray
```
4- change color of hightLight selected item 
```
         scrollTapBar.selectColor = UIColor.brown
```
5- change tint color of items in tab bar 
```
         scrollTapBar.tintItemColor  = UIColor.green
```
6- change item text font 
```
         scrollTapBar.textFont = UIFont.systemFont(ofSize: 12)
```
7- you have to option in heightlight selected item (.heightLightItem, heightLightBackground) you can set it by enum (HeightType)
         scrollTapBar.heightType  = HeightType.heightLightBackground  
 ```       
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
