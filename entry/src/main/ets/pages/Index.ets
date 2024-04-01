import home from './home'
import Page from './Page'

@Entry
@Component
struct tabs {
  @State currentIndex: number = 0;

  @Builder TabBarBuilder(index: number, title: string, icon: Resource, iconSelected: Resource) {
    Column() {
      Image(this.currentIndex === index ? iconSelected : icon)
        .width(24)
        .height(24)
        .margin(5)
        .objectFit(ImageFit.Contain)
      Text(title)
        // .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
    .backgroundColor('#f7f7f7')
    .border({ width: { top: 0.5 }, color: '#bbbbbb' })
  }

  build() {
    Row() {
      Tabs({ barPosition: BarPosition.End }) {
        TabContent() {
          Page()
        }
        .tabBar(this.TabBarBuilder(0, '首页', $r('app.media.ikun'), $r('app.media.app_icon')))
        .tabIndex(0)

        TabContent() {
          Page()
        }
        .tabBar(this.TabBarBuilder(1, '购物车', $r('app.media.ikun'), $r('app.media.ikun')))
        .tabIndex(1)

        TabContent() {
          home()
        }
        .tabBar(this.TabBarBuilder(2, '我的', $r('app.media.ikun'), $r('app.media.ikun')))
        .tabIndex(2)
      }
    }
  }
}