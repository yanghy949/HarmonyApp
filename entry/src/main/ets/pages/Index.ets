import router from '@ohos.router';
import home from './home'
import Page from './Page'
import gouwuche from './gouwuche'
@Entry
@Component
struct tabs {
  user:string=router.getParams()?.['user'];
  @State currentIndex: number = 0;
  @Builder TabBarBuilder(index: number, title: string, icon: Resource, iconSelected: Resource) {
    Column() {
      Image(this.currentIndex === index ? iconSelected : icon)
        .width(24)
        .height(24)
        .margin(5)
        .objectFit(ImageFit.Contain)
        .borderRadius(50)
      Text(this.currentIndex === index ? 'ikun':title)
        .fontColor(this.currentIndex === index ? '#007DFF' : '#182431')
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
  aboutToAppear(){
    if(!this.user){
      router.replaceUrl({
        url:'pages/user/login'
      })
    }
  }

  build() {
    Row() {
      Tabs({ barPosition: BarPosition.End}) {
        TabContent() {
          Page()

        }
        .tabBar(this.TabBarBuilder(0, '商城', $r('app.media.mall'), $r('app.media.ikun')))

        TabContent() {
          gouwuche()
        }
        .tabBar(this.TabBarBuilder(1, '购物车', $r('app.media.shopping'), $r('app.media.ikun')))

        TabContent() {
          home({name:this.user,ID:'123'})
        }
        .tabBar(this.TabBarBuilder(2, '我的', $r('app.media.home'), $r('app.media.ikun')))
      }
      .onChange((index: number) => {
        this.currentIndex = index
      })
    }
  }
}