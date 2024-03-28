import router from '@ohos.router'
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
          .margin({top:30})
          .borderRadius(100)
        Column(){
          Text(this.user)
            .fontSize(30)
            .margin({left:0,top:30})
          Text('ID:'+this.ID)
          }.height(100).margin({top:30,left:20})
          Button('设置')
            .margin({left:'35%',top:30})
            .onClick(()=>{
              router.pushUrl({
                url:'pages/Index'
              })
            })
      }
        Row(){
          Column(){
            Text('订单')
              .fontSize(30)
            Image($r('app.media.ikun')).width(50)
          }

          Text('|').fontSize(30).margin({left:10,right:10})

          Column() {
            Text('待支付')
              .fontSize(30)
            Image($r('app.media.ikun')).width(50)
          }

          Text('|').fontSize(30).margin({left:10,right:10})

          Column() {
            Text('待收货')
              .fontSize(30)
            Image($r('app.media.ikun')).width(50)
          }

        }.margin({top:20}).backgroundColor(Color.Pink)
  }
  }
}