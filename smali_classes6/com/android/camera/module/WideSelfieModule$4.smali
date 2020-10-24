.class Lcom/android/camera/module/WideSelfieModule$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/WideSelfieModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule$4;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveCompleted()V
    .locals 5

    const-string v0, "WideSelfieModule"

    const-string v1, "onSaveCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule$4;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {v0}, Lcom/android/camera/module/WideSelfieModule;->access$500(Lcom/android/camera/module/WideSelfieModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10075b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/WideSelfieModule$4;->this$0:Lcom/android/camera/module/WideSelfieModule;

    iget-object v2, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/android/camera/module/WideSelfieModule;->access$600(Lcom/android/camera/module/WideSelfieModule;)I

    move-result v1

    invoke-static {v2, v0, v3, v4, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule$4;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->access$700(Lcom/android/camera/module/WideSelfieModule;)V

    return-void
.end method
