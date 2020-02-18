.class Lcom/android/camera/module/MiLiveModule$1;
.super Landroid/telephony/PhoneStateListener;
.source "MiLiveModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MiLiveModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {v0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->access$300(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {v0}, Lcom/android/camera/module/MiLiveModule;->onStop()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
