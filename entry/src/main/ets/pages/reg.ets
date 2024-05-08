import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct reg {
  @State user: string = ''
  @State pass: string = ''
  @State pass2: string = ''

  build() {
    Column() {
      // Image($r('app.media.ikun'))
      //   .width(100)
      //   .height(100)
      //   .margin({top:150})
      //   .borderRadius(100)

      Text('注册')
        .margin({ top: 30 })
        .fontWeight(FontWeight.Bold)
        .fontSize(30)
        .margin({ top: 150 })

      TextInput({ placeholder: '请输入用户名', text: this.user })
        .width('80%')
        .padding(10)
        .margin({ top: 50 })
        .onChange((value) => {
          this.user = value
        })

      TextInput({ placeholder: '请输入密码', text: this.pass })
        .type(InputType.Password)
        .width('80%')
        .padding(10)
        .margin({ top: 20 })
        .onChange((value) => {
          this.pass = value
        })
      TextInput({ placeholder: '请再次输入密码', text: this.pass2 })
        .type(InputType.Password)
        .width('80%')
        .padding(10)
        .margin({ top: 20 })
        .onChange((value) => {
          this.pass2 = value
        })

      Button('注册')
        .margin({ top: 30 })
        .width('80%')
        .onClick(() => {
          if (!(this.user && this.pass)) {
            promptAction.showToast({message:'用户名和密码不能为空'})
          }
          else if (this.pass === this.pass2) {
            router.replaceUrl({
              url: 'pages/login',
              params: {
                user: this.user,
                pass: this.pass
              }
            })
            router.clear()
          }
          else {
            promptAction.showToast({ message: '两次密码不一致' })
          }
        })
    }
    .width('100%')
    .height('100%')
  }
}