.class Lmiui/accounts/ExtraAccountManager$4;
.super Landroid/content/BroadcastReceiver;
.source "ExtraAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/ExtraAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/accounts/ExtraAccountManager;


# direct methods
.method constructor <init>(Lmiui/accounts/ExtraAccountManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p0}, Lmiui/accounts/ExtraAccountManager$4;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->access$500(Lmiui/accounts/ExtraAccountManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lmiui/accounts/ExtraAccountManager$4$1;

    invoke-direct {v2, p0, p2, v0}, Lmiui/accounts/ExtraAccountManager$4$1;-><init>(Lmiui/accounts/ExtraAccountManager$4;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
