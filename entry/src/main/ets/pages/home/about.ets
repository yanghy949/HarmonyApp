@Entry
@Component
struct About {
  build() {
    Column() {
      Navigation()
        .title('关于应用')
        .titleMode(NavigationTitleMode.Mini)
        .height(50)
        .margin({ top: 30 })
      Row() {
        Column() {
          Image($r('app.media.ikun'))
            .width(100)
            .borderRadius(10)
          Text('ikun商城')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
          Text('当前版本:1.0')
            .fontSize(20)

        }
      }

      Column() {
        Row() {
          Text('开发者：')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

        }
        .padding(10)
        .alignSelf(ItemAlign.Start)
        Row() {
          Text(`杨鸿宇\t李焕洋`)
            .padding({bottom:5})
        }
        .width('100%')
        .padding({ left: 10 })
        .alignSelf(ItemAlign.Start)
        .borderWidth({bottom:1})
        .borderColor('#e3e4e5')

        Row() {
          Text('项目地址：')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

        }
        .padding(10)
        .alignSelf(ItemAlign.Start)
        Row() {
          Text(`https://github.com/yanghy949/HarmonyApp`)
            .padding({bottom:5})

        }
        .width('100%')
        .padding({ left: 10 })
        .alignSelf(ItemAlign.Start)
        .borderWidth({bottom:1})
        .borderColor('#e3e4e5')

        Row() {
          Text('检查更新')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

        }
        .padding(10)
        .alignSelf(ItemAlign.Start)
        Row() {
          Text(`已是最新版本`).padding({bottom:5})
        }
        .width('100%')
        .padding({ left: 10 })
        .alignSelf(ItemAlign.Start)

      }
      .width('90%')
      .margin({ top: 30 })
      .backgroundColor(Color.White)
      .borderRadius(20)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#e3e4e5')
  }
}