import {TabBars} from './components/TabBars'
import guanggao from './components/guanggao'

@Entry
@Component
export default struct Page {


  build() {
    Column() {
      Row(){
        guanggao()
      }.margin({top:1})
      .width('95%')
      // Navigation(){
        Column(){
          //内容
          TabBars()
        }
      .margin({top:20})
      // }
      // .size({width:'100%',height:'100%'})
      // .title('华为商城')
      // .titleMode(NavigationTitleMode.Mini)
    }
    .height('100%')
    .backgroundColor('#f1f3f5')
  }
}