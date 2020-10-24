.class Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private mLoginRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/internal/webkit/DeviceAccountLogin;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;->mLoginRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;->mLoginRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/webkit/DeviceAccountLogin;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DeviceAccountLogin"

    const-string v1, "Fail to login"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    :goto_0
    return-void
.end method
