.class Lmiui/view/MiuiSecurityPermissionHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiSecurityPermissionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_4c

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-ne v2, v3, :cond_4c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$000(Lmiui/view/MiuiSecurityPermissionHandler;)V

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Connected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    monitor-enter p0

    :try_start_4d
    const-string v1, "miui.intent.action.FINISH_BOOTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$200(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onAddAccount()V

    :cond_67
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$400(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    :cond_78
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # setter for: Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z
    invoke-static {v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$502(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z

    :cond_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_4d .. :try_end_7e} :catchall_f0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$600(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    if-ne v3, v2, :cond_96

    if-nez v1, :cond_ba

    :cond_96
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_ba

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a9

    goto :goto_ba

    :cond_a9
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$800(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "miui_account_login_check"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_ef

    :cond_ba
    :goto_ba
    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUI_ACCOUNT_LOGIN_CHECK: mRetPermission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v5}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$800(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "miui_account_login_check"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_ef
    :goto_ef
    return-void

    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v1
.end method
