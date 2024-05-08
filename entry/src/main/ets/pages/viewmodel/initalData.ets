export class GoodsItem{
  goodsImg:Resource;
  goodsName:string;
  title:string;
  desc:string;
  price:string

  constructor(goodsImg:Resource,goodName:string,price:string) {
    this.goodsImg = goodsImg
    this.goodsName = goodName
    this.title = '重磅出击，新品试用中！！！'
    this.desc = '12138人评价 84%好评'
    this.price = price
  }
}

export const goodsList:GoodsItem[] = [
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199'),
  new GoodsItem($r('app.media.icon'),'【新品上市)】','￥199')
]