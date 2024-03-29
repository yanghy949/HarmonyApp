import router from '@ohos.router'
import Prompt from '@system.prompt';
import promptAction from '@ohos.promptAction';

@Entry
@Component
struct Home {
  @State user: string = '用户名'
  @State ID: string = '123123'
  @State list: Object[] = [
    { text: '待支付', image: $r('app.media.ikun'), url: '.' },
    { text: '待发货', image: $r('app.media.ikun'), url: '.' },
    { text: '待收货', image: $r('app.media.ikun'), url: '.' },
    { text: '待评价', image: $r('app.media.ikun'), url: '.' }
  ];

  @State menu:Object[]=[
    {menu:'我的收货地址',url:''},
    {menu:'银行卡管理',url:''},
    {menu:'检查更新',url:''},
  ]
  build() {
    Column() {
      //用户信息
      Row() {

        Image($r('app.media.ikun'))
          .width(100)
          .height(100)
          .margin({ top: 30 })
          .borderRadius(100)

        Column() {
          Text(this.user)
            .fontSize(30)
            .margin({ left: 0, top: 30 })
          Text('ID:' + this.ID)
        }
        .height(100)
        .margin({ top: 30, left: 20 })
        //修改
        Button('修改')
          .margin({ left: '35%', top: 30 })
          .onClick(() => {
            promptAction.showToast({ message: '还没写，别瞎点' })
            // router.pushUrl({
            //   url: 'pages/Index'
            // })
          })
      }
      //订单
      Column() {
        Text('全部订单 >')
          .margin({ top: 10, bottom: 15 })
          .fontSize(18)
          .width('85%')
          .textAlign(TextAlign.End)
          .fontColor('#7f7f7f')
          .onClick(() => {
            promptAction.showToast({ message: '还没写，别瞎点' })
          })
        Row() {
          ForEach(this.list, (item) => {
            Column() {
              Text(item.text)
                .fontSize(25)
              Image(item.image).width(50)
            }
            .width('25%')
            .onClick(() => {
              promptAction.showToast({ message: '还没写，别瞎点' })
              router.pushUrl({
                url: item.url
              })
            })
          })
        }.margin({bottom:10})
      }.backgroundColor(Color.Red).borderRadius(10).margin({ top: 40 })


      ForEach(this.menu,(item)=>{
        Row(){
          Text(item.menu).fontSize(30)
          Text('>').padding({left:'40%'}).fontSize(30)
        }.margin({top:20}).backgroundColor(Color.White).width('100%').height(50)
        .onClick(()=>{
          router.pushUrl({
            url:item.url
          })
        })
      })
      //退出登录
      Button('退出登录')
        .margin({ top: 300 })
        .backgroundColor('#ffffff')
        .fontColor('#000000')
        .fontSize(20)
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Index'
          })
        })

    }.backgroundColor('#efefef').width('100%').height('100%')
  }
}