import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

let users=[
  {name:'yhy',pass:'123'},
  {name:'lhy',pass:'456'}
]
@Entry
@Component
struct login {
  @State user: string = router.getParams()?.['user'];
  @State pass: string = router.getParams()?.['pass'];
aboutToAppear(){
  if(this.user&&this){
    users.push({name:this.user,pass:this.pass})
  }
}

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
        .onClick(()=> {
          for (let i = 0;i < users.length; i++) {
            if (users[i].name === this.user && users[i].pass === this.pass) {
              router.replaceUrl({
                url: 'pages/Index',
                params: {
                  user: this.user,
                }
              })
              router.clear()
              return 0
            }
          }
          promptAction.showToast({ message: '用户名或密码错误' })
        })
        //   if ((this.user=='yhy'&&this.pass=='123')||(this.user=='lhy'&&this.pass=='456')) {
        //     router.replaceUrl({
        //       url:'pages/Index',
        //       params:{
        //         user:this.user,
        //       }
        //     })
        //     router.clear()
        //   }
        //   else {
        //     promptAction.showToast({message:'用户名或密码错误'})
        //   }
        // })
      Text('注册账号')
        .margin({top:10})
        .fontColor('#007BFF')
        .onClick(()=>{
          router.pushUrl({
            url:'pages/user/reg'
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}