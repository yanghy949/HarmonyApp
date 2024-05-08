import {GoodsList} from './GoodsList'

@Component
export struct TabBars{
  @State tabsIndex : number = 0
  @State initBareData:string[] = [
    '精选','手机','服饰','家居'
  ]
  @Builder
  tabBarBuilder(content:string,index:number){
    Column(){
      Text(content)
        .fontSize(this.tabsIndex === index ? 30:16)
        .fontColor(this.tabsIndex === index ?'#000':'#666')
    }
  }
  build(){
    Tabs(){
      ForEach(this.initBareData,(item:string,index:number) => {
        TabContent(){
          Column(){
            //编写结构位置
            if(index ===0){
              GoodsList()
            }else {
              Text(item).fontSize(80)
            }
          }
          .justifyContent(FlexAlign.Center)
          .width('100%')
          .height('100%')
        }
        .tabBar(item)
      })
    }
    .onChange((index:number)=>{
      this.tabsIndex
    })
  }
}
