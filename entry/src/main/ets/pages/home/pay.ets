class Pays {
  name: string
  img: Resource
  money:number
}

@Entry
@Component
struct Pay {
  @State PayList: Pays[] = [
    { name: "微信", img: $r('app.media.aliPay') ,money:300},
    { name: "支付宝", img: $r('app.media.weixinPay'),money:500 },
    { name: "中国农业银行", img: $r('app.media.bankPay'),money:2000 },
  ]

  build() {
    Column() {
      Navigation()
        .title('我的钱包')
        .titleMode(NavigationTitleMode.Mini)
        .height(50)
        .margin({ top: 30 })
      ForEach(this.PayList, (item) => {
        Column() {
          Row() {
            Image(item.img)
              .width(40)
              .height(32)
              .margin(3)
            Text(item.name)
              .fontSize(30)
          }
          .width('93%')
          .margin({ top: 10, bottom: 10 })

          Row() {
            Text(`余额:${item.money}元`)
              .margin({left:30})
          }
          .alignSelf(ItemAlign.Start)
        }
        .backgroundColor('#e3e4e5')
        .borderRadius(20)
        .margin({ top: 30 })
        .padding(10)
      })
    }
  }
}