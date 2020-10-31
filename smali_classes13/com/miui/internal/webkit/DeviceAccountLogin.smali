.class public Lcom/miui/internal/webkit/DeviceAccountLogin;
.super Ljava/lang/Object;
.source "DeviceAccountLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceAccountLogin"


# instance fields
.field protected mAccountManager:Landroid/accounts/AccountManager;

.field protected mActivity:Landroid/app/Activity;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;

    invoke-direct {v0, p0}, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;-><init>(Lcom/miui/internal/webkit/DeviceAccountLogin;)V

    iput-object v0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginCancel()V

    return-void

    :cond_d
    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    aget-object v1, v0, v3

    goto :goto_2a

    :cond_18
    array-length v2, v0

    :goto_19
    if-ge v3, v2, :cond_2a

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object v1, v4

    goto :goto_2a

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2a
    :goto_2a
    if-eqz v1, :cond_4d

    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginStart()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weblogin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mCallback:Landroid/accounts/AccountManagerCallback;

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_50

    :cond_4d
    invoke-virtual {p0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginCancel()V

    :goto_50
    return-void
.end method

.method public onLoginCancel()V
    .registers 1

    return-void
.end method

.method public onLoginFail()V
    .registers 1

    return-void
.end method

.method public onLoginPageFinished()V
    .registers 1

    return-void
.end method

.method public onLoginStart()V
    .registers 1

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
