import {TabBars} from './components/TabBars'
@Entry
@Component
export default struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
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