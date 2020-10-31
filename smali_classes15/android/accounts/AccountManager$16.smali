.class Landroid/accounts/AccountManager$16;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic val$listener:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4

    iput-object p1, p0, Landroid/accounts/AccountManager$16;->this$0:Landroid/accounts/AccountManager;

    iput-object p2, p0, Landroid/accounts/AccountManager$16;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p3, p0, Landroid/accounts/AccountManager$16;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Landroid/accounts/AccountManager$16;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/accounts/AccountManager$16;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$16;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Landroid/accounts/AccountManager$16;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/accounts/AccountManager;->access$300(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$16;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_52

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/accounts/AccountManager$16;->val$accountsCopy:[Landroid/accounts/Account;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_40

    aget-object v6, v3, v5

    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_40
    iget-object v3, p0, Landroid/accounts/AccountManager$16;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    invoke-interface {v3, v4}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V

    goto :goto_59

    :cond_52
    iget-object v2, p0, Landroid/accounts/AccountManager$16;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v3, p0, Landroid/accounts/AccountManager$16;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-interface {v2, v3}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_59
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_59} :catch_5c
    .catchall {:try_start_7 .. :try_end_59} :catchall_5a

    :cond_59
    :goto_59
    goto :goto_64

    :catchall_5a
    move-exception v1

    goto :goto_66

    :catch_5c
    move-exception v1

    :try_start_5d
    const-string v2, "AccountManager"

    const-string v3, "Can\'t update accounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_64
    monitor-exit v0

    return-void

    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_5a

    throw v1
.end method
