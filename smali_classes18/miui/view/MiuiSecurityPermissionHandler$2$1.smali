.class Lmiui/view/MiuiSecurityPermissionHandler$2$1;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$2;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$800(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    move v0, v2

    if-eqz v0, :cond_63

    monitor-enter p0

    :try_start_1a
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$account:Landroid/accounts/Account;

    if-nez v1, :cond_29

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$600(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v2

    move-object v1, v2

    :cond_29
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    if-nez v1, :cond_35

    const/4 v4, 0x0

    goto :goto_37

    :cond_35
    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_37
    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1000(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I

    move-result v3

    # setter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$902(Lmiui/view/MiuiSecurityPermissionHandler;I)I

    const/4 v2, -0x2

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v3, v3, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    if-eq v2, v3, :cond_53

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-nez v2, :cond_5e

    :cond_53
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V

    :cond_5e
    monitor-exit p0

    goto :goto_63

    :catchall_60
    move-exception v1

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_1a .. :try_end_62} :catchall_60

    throw v1

    :cond_63
    :goto_63
    return-void
.end method
