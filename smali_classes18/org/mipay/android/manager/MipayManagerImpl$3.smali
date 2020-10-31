.class Lorg/mipay/android/manager/MipayManagerImpl$3;
.super Ljava/lang/Object;
.source "MipayManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mipay/android/manager/MipayManagerImpl;
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

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1e

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    # setter for: Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;
    invoke-static {p2}, Lorg/mipay/android/manager/MipayManagerImpl;->access$602(Landroid/os/IBinder;)Landroid/os/IBinder;

    :try_start_21
    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$600()Landroid/os/IBinder;

    move-result-object v0

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$700()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_47

    :catch_2e
    move-exception v0

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkToDeath fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1e

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$300()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_30

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "re-bind the service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$800()V

    :cond_30
    return-void
.end method
