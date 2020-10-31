.class Lorg/mipay/android/manager/MipayManagerImpl$1;
.super Ljava/lang/Thread;
.source "MipayManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mPackName:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$300()Landroid/content/Context;

    move-result-object v1

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mipayconn:Landroid/content/ServiceConnection;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$200()Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_3b

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$500()Z

    move-result v1

    if-eqz v1, :cond_4a

    # getter for: Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tida client calling joinThreadPool"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    invoke-static {}, Landroid/os/Binder;->joinThreadPool()V

    return-void
.end method
