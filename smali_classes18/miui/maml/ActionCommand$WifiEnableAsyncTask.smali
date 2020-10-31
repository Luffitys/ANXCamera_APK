.class public final Lmiui/maml/ActionCommand$WifiEnableAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiEnableAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDesiredState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->mDesiredState:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lmiui/maml/util/WifiApHelper;

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/maml/util/WifiApHelper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    const-string v3, "ActionCommand"

    const-string v4, "No wifiManager."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1c
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    iget-boolean v4, p0, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->mDesiredState:Z

    if-eqz v4, :cond_30

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2c

    const/16 v4, 0xd

    if-ne v3, v4, :cond_30

    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lmiui/maml/util/WifiApHelper;->setWifiApEnabled(Z)V

    :cond_30
    iget-boolean v4, p0, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->mDesiredState:Z

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-object v2
.end method
