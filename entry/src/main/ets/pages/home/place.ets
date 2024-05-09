@Entry
@Component
struct Place {
  @State place:string[]=['北京科技大学天津学院','天津市宝坻区周良庄']

  build() {
      Column() {
        Navigation(){}
        .title('我的地址')
        .height(50)
        .titleMode(NavigationTitleMode.Mini)
        .margin({top:30,bottom:50})
        ForEach(this.place,(item)=>{
          Row(){
            Text(item)
              .fontSize(30)
          }
          .width('100%')
          .backgroundColor('#e3e4e5')
          .width('90%')
          .borderRadius(10)
          .margin({top:20})
          .padding(10)
        })
        Row(){
          Button('添加新地址')
            .onClick(()=>{
              this.place.push('北京科技大学天津学院')
            })
        }
        .margin({top:50})
      }
      .width('100%')
      .height('100%')
  }
}