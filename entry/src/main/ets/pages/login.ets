import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
@Entry
@Component
struct Index {
  @State user: string = ''
  @State pass: string = ''

  build() {
    Column(){
      Image($r('app.media.ikun'))
        .width(100)
        .height(100)
        .margin({top:150})
        .borderRadius(100)

      Text('ikun商城')
        .margin({top:30})
        .fontWeight(FontWeight.Bold)
        .fontSize(30)

      TextInput({placeholder:'请输入用户名',text:this.user})
        .width('80%')
        .padding(10)
        .margin({top:50})
        .onChange((value)=>{
          this.user = value
        })

      TextInput({placeholder:'请输入密码', text:this.pass})
        .type(InputType.Password)
        .width('80%')
        .padding(10)
        .margin({top:20})
        .onChange((value)=>{
          this.pass = value
        })

      Button('登录')
        .margin({top:30})
        .width('80%')
        .onClick(()=>{
          if (this.user=='yhy'&&this.pass=='123') {
            router.replaceUrl({
              url:'pages/Index'
            })
          }
          else {
            promptAction.showToast({message:'用户名或密码错误'})
          }
        })
      Text('注册账号')
        .margin({top:10})
        .fontColor('#007BFF')
        .onClick(()=>{
          router.pushUrl({
            url:'pages/Page'
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}