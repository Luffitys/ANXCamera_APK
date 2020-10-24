.class Lcom/android/camera/module/BaseModule$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/BaseModule$5;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$5;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    const-string v0, "BaseModule"

    const-string v1, "enterAutoHibernation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$5;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setWindowBrightness(I)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule$5;->this$0:Lcom/android/camera/module/BaseModule;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAutoHibernationMode:Z

    :cond_0
    return-void
.end method
