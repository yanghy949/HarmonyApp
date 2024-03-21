import router from '@ohos.router'
import url from '@ohos.url'
@Entry
@Component
struct Home {
  @State user: string = '用户名'
  @State ID: string = '123123'

  build() {
      Column() {
        Row(){
        Image($r('app.media.ikun'))
          .width(100)
          .height(100)
          .margin({top:20})
          .borderRadius(100)
        Column(){
          Text(this.user)
            .fontSize(20)
            .margin({left:0,top:30})
          Text('ID:'+this.ID)
          }.height(100).margin({top:20,left:15})
          .backgroundColor(Color.Pink)
          Button('设置')
            .margin({left:'40%',top:20})
            .onClick(()=>{
              router.pushUrl({
                url:'pages/Index'
              })
            })
      }
  }
  }
}