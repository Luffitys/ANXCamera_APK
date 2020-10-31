.class Lmiui/view/MiuiSecurityPermissionHandler$7;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$btn:Landroid/widget/Button;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$600(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    if-gtz v1, :cond_3b

    if-nez v0, :cond_17

    goto :goto_3b

    :cond_17
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    const v2, 0x110e013d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_84

    :cond_29
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_84

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$btn:Landroid/widget/Button;

    const v2, 0x110e013f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_84

    :cond_3b
    :goto_3b
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    :try_start_49
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1200(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_69

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify button OnClick  removeView!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1200(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v3, 0x0

    # setter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;
    invoke-static {v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1202(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)Landroid/view/View;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_69} :catch_6a

    :cond_69
    goto :goto_83

    :catch_6a
    move-exception v2

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify button OnClick  removeView ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    nop

    :cond_84
    :goto_84
    return-void
.end method
