import router from '@ohos.router'
import promptAction from '@ohos.promptAction';

@Entry
@Component
export default struct Home {
  @State name: string = '用户名'
  @State ID: string = '123123'
  @State list: Object[] = [
    { text: '待支付', image: $r('app.media.ikun'), url: 'pages/home/dingdan', id: 0 },
    { text: '待发货', image: $r('app.media.ikun'), url: 'pages/home/dingdan', id: 1 },
    { text: '待收货', image: $r('app.media.ikun'), url: 'pages/home/dingdan', id: 2 },
    { text: '待评价', image: $r('app.media.ikun'), url: 'pages/home/dingdan', id: 3 }
  ];
  @State menu: Object[] = [
    { menu: '我的地址', url: 'pages/home/place' },
    { menu: '我的钱包', url: '' },
    { menu: '个性设置', url: '' },
    { menu: '关于应用', url: '' },
  ]
@State sign:string='签到'
  build() {
    Column() {
      Scroll() {
        Column() {
          //用户信息
          Row() {

            Image($r('app.media.ikun'))
              .width(100)
              .height(100)
              .margin({ top: 30 })
              .borderRadius(100)

            Column() {
              Text(this.name)
                .fontSize(30)
                .margin({ left: 0, top: 30 })
              Text('ID:' + this.ID)
            }
            .height(100)
            .margin({ top: 30, left: 20 })
            //修改
            Button(this.sign)
              .margin({ left: 30, top: 30 })
              .onClick(() => {
                this.sign='已签到'
                promptAction.showToast({ message: '签到成功' })
                console.log(this.sign);
              })
          }

          //订单
          Text('全部订单 >')
            .margin({ top: 40, bottom: 15 })
            .fontSize(18)
            .width('85%')
            .textAlign(TextAlign.End)
            .fontColor('#7f7f7f')
            .onClick(() => {
              router.pushUrl({ url: 'pages/home/dingdan', params: { id: 0 } })
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
                  url: item.url,
                  params: { id: item.id }
                })
              })
            })
          }

          ForEach(this.menu, (item) => {
            Row() {
              Text(item.menu)
                .fontSize(30)
                .width('45%')
                .padding({ left: '10%' })
              Text('>')
                .fontSize(30)
                .width('55%')
                .padding({ left: '45%' })
            }
            .margin({ top: 20 })
            .borderColor('#3c3c3c')
            .borderWidth({ top: 1, bottom: 1 })
            .width('100%')
            .padding({ top: 2, bottom: 2 })
            .onClick(() => {
              promptAction.showToast({ message: '还没写，别瞎点' })
              router.pushUrl({
                url: item.url
              })
            })
          })

          //退出登录
          Button('退出登录')
            .margin({ top: 100 })
            .backgroundColor('#eeeeee')
            .fontColor('#000000')
            .fontSize(20)
            .onClick(() => {
              router.replaceUrl({
                url: 'pages/login'
              })
              router.clear()
            })
        }
      }
    }
  }
}
