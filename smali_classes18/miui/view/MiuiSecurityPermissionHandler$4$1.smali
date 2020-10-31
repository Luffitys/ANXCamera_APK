.class Lmiui/view/MiuiSecurityPermissionHandler$4$1;
.super Ljava/lang/Thread;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$4;Landroid/accounts/Account;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1200(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$4;->val$action:Landroid/widget/Button;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    if-nez v3, :cond_17

    const-string v3, "null"

    goto :goto_19

    :cond_17
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_19
    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1300(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    goto :goto_34

    :cond_33
    return-void

    :cond_34
    :goto_34
    monitor-enter p0

    :try_start_35
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->val$account:Landroid/accounts/Account;

    if-nez v0, :cond_69

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$500(Lmiui/view/MiuiSecurityPermissionHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onAddAccount()V

    goto :goto_69

    :cond_5b
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # setter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z
    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$402(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$4$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$4;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$4;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # setter for: Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z
    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$202(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z

    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_35 .. :try_end_6d} :catchall_6b

    throw v0
.end method
