import router from '@ohos.router'
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
  tabs:Object[]=[
    {id:0,text:'待支付'},
    {id:1,text:'待发货'},
    {id:2,text:'待收货'},
    {id:3,text:'待评价'},
  ]
  controller: TabsController = new TabsController()
  param=router.getParams()['id']
  onPageShow(){
    this.controller.changeIndex(this.param?this.param:0)
  }
  build() {
    Column() {
      Navigation()
      .title('我的订单')
      .titleMode(NavigationTitleMode.Mini)
      .height(50)
      .margin({top:30})
      Tabs({controller:this.controller}) {
        ForEach(this.tabs, (tab) => {
          TabContent() {
            page1({ name: tab.text })
          }
          .tabBar(tab)
          .tabIndex(tab.id)
        })
      }

    }
  }
}