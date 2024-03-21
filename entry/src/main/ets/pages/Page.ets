import thermal from '@ohos.thermal'
import router from '@ohos.router'
@Entry
@Component
struct Page {
  @State message: string = 'Hello World'
  @State bt:string = '这是一个按钮'
  @State bg1:Color = Color.Pink
  @State bg2:Color = Color.Blue
  @State bg3:Color = Color.White
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
          .backgroundColor(this.bg1)
        Text("\n\n")
          .fontSize(50)
        Button(this.bt)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Black)
          .backgroundColor(this.bg3)
          .fontSize(30)
          .onClick(()=>{
            // this.message = "我只是告诉你\n那是个按钮"
            // this.bt = "没让你按"
            // this.bg1 = Color.Red
            // this.bg3 = Color.Yellow
            router.pushUrl({
              url:'pages/home'
            })
          })

      }
      .width('100%')
    }
    .height('100%')
    .backgroundColor(this.bg2)
  }
}