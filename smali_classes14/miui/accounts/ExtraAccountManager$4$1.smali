.class Lmiui/accounts/ExtraAccountManager$4$1;
.super Ljava/lang/Object;
.source "ExtraAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/accounts/ExtraAccountManager$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/accounts/ExtraAccountManager$4;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lmiui/accounts/ExtraAccountManager$4;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4

    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iput-object p2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_62

    :cond_17
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v1, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->access$300(Lmiui/accounts/ExtraAccountManager;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v2, v2, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_2c
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v3, v3, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v3}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v5, v5, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    # invokes: Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
    invoke-static {v5, v6, v7, v1}, Lmiui/accounts/ExtraAccountManager;->access$400(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    goto :goto_3c

    :cond_5c
    monitor-exit v2

    goto/16 :goto_d4

    :catchall_5f
    move-exception v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_2c .. :try_end_61} :catchall_5f

    throw v3

    :cond_62
    :goto_62
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    const-string v2, "extra_account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    const-string v3, "extra_bundle"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/Bundle;

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$intent:Landroid/content/Intent;

    const/4 v3, -0x1

    const-string v4, "extra_update_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v1, :cond_cc

    if-lez v10, :cond_cc

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v2, v2, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    :try_start_8d
    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v2, v2, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v13, v2

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager$4$1;->this$1:Lmiui/accounts/ExtraAccountManager$4;

    iget-object v2, v2, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    const-string v5, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object v5, v1

    move v6, v10

    move-object v7, v9

    # invokes: Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V
    invoke-static/range {v2 .. v8}, Lmiui/accounts/ExtraAccountManager;->access$200(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V

    goto :goto_9d

    :cond_c7
    monitor-exit v11

    goto :goto_d3

    :catchall_c9
    move-exception v2

    monitor-exit v11
    :try_end_cb
    .catchall {:try_start_8d .. :try_end_cb} :catchall_c9

    throw v2

    :cond_cc
    const-string v2, "ExtraAccountManager"

    const-string v3, "account changed, but no account or type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d3
    nop

    :goto_d4
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$4$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
