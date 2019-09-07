.class Lcom/android/camera/ActivityBase$ActivityHandler;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object p0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7

    const-string v1, "ActivityBase"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "exception occurs, msg = %s , exception = 0x%x"

    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe6

    if-eq v0, p1, :cond_2

    const/16 p1, 0xe7

    if-eq v0, p1, :cond_2

    const/16 p1, 0xec

    if-eq v0, p1, :cond_2

    const/16 p1, 0xed

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f0f0077

    invoke-static {p0, p1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_1

    :cond_2
    :pswitch_1
    invoke-static {p0}, Lcom/android/camera/Util;->isInVideoCall(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f0085

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    const p1, 0x7f0f0084

    goto :goto_0

    :cond_4
    const p1, 0x7f0f0083

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtil;->trackModeSwitch()V

    goto :goto_1

    :cond_6
    const-string p1, "handleMessage:  set mIsFinishInKeyguard = true;"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/android/camera/ActivityBase;->access$002(Lcom/android/camera/ActivityBase;Z)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xe2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
