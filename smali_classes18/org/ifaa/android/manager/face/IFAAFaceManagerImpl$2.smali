.class Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$2;
.super Ljava/lang/Object;
.source "IFAAFaceManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const-string v0, "IFAAFaceManagerImplV2"

    :try_start_2
    # getter for: Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$100()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkToDeath fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    invoke-static {p2}, Lorg/ifaa/android/manager/IIFAAService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v1

    # setter for: Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$002(Lorg/ifaa/android/manager/IIFAAService;)Lorg/ifaa/android/manager/IIFAAService;

    :try_start_27
    # getter for: Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$000()Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v1

    invoke-interface {v1}, Lorg/ifaa/android/manager/IIFAAService;->faceGetCellinfo()I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_44

    :catch_2f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call ci info fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    # getter for: Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$200()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "re-bind to IFAA service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$300()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    # invokes: Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->initService()V
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$400()V

    :cond_1f
    return-void
.end method
