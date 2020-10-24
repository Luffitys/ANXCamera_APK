.class public Lcom/android/camera/external/SendBroadcastNotifyExternal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/external/INotifyExternal;


# static fields
.field private static final CAMERA_STATUS_ACTION:Ljava/lang/String; = "com.android.camera.action.camera_status"

.field private static final CAMERA_STATUS_RECEIVER_PERMISSION:Ljava/lang/String; = "com.android.camera.permission.CAMERA_STATUS"

.field private static final EXTRA_CAMERA_LENS:Ljava/lang/String; = "lens"

.field private static final EXTRA_CAMERA_MODULE:Ljava/lang/String; = "module"

.field private static final EXTRA_CAMERA_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "SendBroadcastNotifyExternal"

.field private static final VALUE_CAMERA_STATUS_START_FOREGROUND:Ljava/lang/String; = "start_foreground"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/external/SendBroadcastNotifyExternal;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public notifyCameraResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/external/SendBroadcastNotifyExternal;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/external/SendBroadcastNotifyExternal;->TAG:Ljava/lang/String;

    const-string v1, "notify external(status: start_foreground)"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.camera_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    const-string v2, "start_foreground"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/camera/external/SendBroadcastNotifyExternal;->mContext:Landroid/content/Context;

    const-string v1, "com.android.camera.permission.CAMERA_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyModeAndFacing(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/external/SendBroadcastNotifyExternal;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/external/SendBroadcastNotifyExternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify external(mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",facing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.camera_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lens"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/camera/external/SendBroadcastNotifyExternal;->mContext:Landroid/content/Context;

    const-string p1, "com.android.camera.permission.CAMERA_STATUS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
