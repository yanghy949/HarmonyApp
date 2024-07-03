
@Entry
@Component
export default struct guanggao {
  @State swiperimgs: Array<Resource> = [
  $r("app.media.lb1"),
  $r('app.media.lb2'),
  $r('app.media.lb3'),
  $r('app.media.lb4'),
  ]

  build() {
    Swiper() {
      ForEach(this.swiperimgs, (item:Resource) => {
        Image(item)
          .width('80%')
          .height(300)
          .borderRadius(15)
      })
    }
    .width('80%')
    .borderRadius(15)
    .autoPlay(true)
    .onChange((index: number) => {
      console.info('now', index.toString())
    })
    .width('100%')
    .borderRadius(25)
    .margin({ top: 10 })
  }
}