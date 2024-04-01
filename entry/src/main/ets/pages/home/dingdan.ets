@Component
struct page1{
  @State name:string='tabName'
  build(){
    Text(this.name)
  }
}

@Entry
@Component
struct dingdan{
  tabs:string[]=['待支付','待发货','待收货','待评价']
  build() {
    Column() {
      Navigation()
      .title('我的订单')
      .titleMode(NavigationTitleMode.Mini)
      .height(50)
      .margin({top:30})
      Tabs() {
        ForEach(this.tabs, (tab) => {
          TabContent() {
            page1({ name: tab })
          }
          .tabBar(tab)
        })
      }
    }
  }
}