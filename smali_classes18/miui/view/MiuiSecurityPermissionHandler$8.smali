.class Lmiui/view/MiuiSecurityPermissionHandler$8;
.super Ljava/lang/Thread;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_7c

    const/16 v0, 0xa

    :goto_3
    const/4 v1, -0x2

    if-lez v0, :cond_35

    :try_start_6
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_14

    :cond_10
    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_14
    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1000(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I

    move-result v3

    # setter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$902(Lmiui/view/MiuiSecurityPermissionHandler;I)I

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-eq v1, v2, :cond_24

    goto :goto_35

    :cond_24
    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " updateWaterMarkerAccount postVerificationWaterMarker NETWORK_ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_35
    :goto_35
    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateWaterMarkerAccount! mRetWater:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-eq v1, v2, :cond_6e

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    if-nez v1, :cond_64

    goto :goto_6e

    :cond_64
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onHideWaterMarker()V

    goto :goto_77

    :cond_6e
    :goto_6e
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V

    :goto_77
    monitor-exit p0

    goto :goto_80

    :catchall_79
    move-exception v0

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_6 .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_80
    return-void
.end method
