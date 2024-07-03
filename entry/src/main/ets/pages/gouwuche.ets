
@Entry
@Component
export default struct Index {

  @State num:number = 1
  @State price:number = 100
  @State old_price: number = 10086
  @State old_total:number= this.num*this.old_price
  @State total_price:number = this.price*this.num
  @State dis_total:number = this.num*(this.old_price-this.price)

  build() {
    Column() {
        // 产品
        Row({ space: 10}){
          // 图片
          Image($r('app.media.ikun'))
            .width(100)
            .borderRadius(8)
          // 文字
          Column({space: 10}) {
            Column({ space: 6}) {
              Text('华为mate70pro')
                .lineHeight(20)
                .fontSize(14)
              Text('会员优惠价')
                .fontSize(12)
                .fontColor('#7f7f7f')
            }
            .width('100%')
            .alignItems(HorizontalAlign.Start)



            Row(){
              // 价格
              Row({ space: 5}) {
                Text() {
                  Span('￥')
                    .fontSize(14)
                  Span(this.price.toString())
                    .fontSize(18)
                }
                .fontColor('#ff4000')
                Text() {
                  Span('￥')
                  Span(this.old_total.toString())  // 40.4
                }
                .fontSize(14)
                .fontColor('#999')
                .decoration({type: TextDecorationType.LineThrough, color: '#999'})
              }
              // 加减
              Row() {
                Text('-')
                  .onClick(
                    () => {
                      if(this.num>=2) {
                        -- this.num
                        this.old_total= this.num*this.old_price
                        this.total_price = this.num* this.price
                        this.dis_total = this.num*(this.old_price-this.price)

                      }
                      else {
                        AlertDialog.show({message:'至少买一件'})
                      }
                    }

                  )
                  .width(22)
                  .height(22)
                  .border({width:1, color: '#e1e1e1', radius: {topLeft: 5, bottomLeft: 5}})
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                Text(this.num.toString())
                  .height(22)
                  .border({width: { top:1, bottom: 1 }, color: '#e1e1e1'})
                  .padding({left: 10, right: 10})
                  .fontSize(14)
                Text('+')
                  .onClick(
                    () => {this.num ++
                      this.old_total= this.num*this.old_price
                      this.total_price = this.num* this.price
                      this.dis_total = this.num*(this.old_price-this.price)
                    }
                  )
                  .width(22)
                  .height(22)
                  .border({width:1, color: '#e1e1e1', radius: {topRight: 5, bottomRight: 5}})
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
              }
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .height(75)
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .alignItems(VerticalAlign.Top)
        .padding(20)

        // 结算
        Row({ space: 10 }){
          // 价格
          Column({space: 5}) {
            Text() {
              Span(`已选 ${this.num} 件，`)
                .fontColor('#848484')
              Span('合计:')
              Span('￥')
                .fontColor('#fd4104')
              Span(this.total_price.toString())  // 20.2
                .fontColor('#fd4104')
                .fontSize(16)
            }
            .fontSize(14)
            Text(`共减${this.dis_total}`)
              .fontColor('#fd4104')
              .fontSize(12)
          }
          .alignItems(HorizontalAlign.End)
          // 结算按钮
          Button('结算')
            .width(110)
            .height(40)
            .backgroundColor('#fed70e')
            .fontColor('#564200')
            .fontSize(16)
            .fontWeight(600)
            .onClick(()=>{
              AlertDialog.show({message:'后台繁忙，请稍后重试...'})
            })
        }
        .width('100%')
        .height(70)
        .backgroundColor('#fff')
        .position({x:0, y: '100%'})
        .translate({y: '-100%'})
        .padding({ left: 20, right: 20 })
        .justifyContent(FlexAlign.End)
      }

    .width('100%')
    .height('100%')
    .backgroundColor('#f3f3f3')
  }
}