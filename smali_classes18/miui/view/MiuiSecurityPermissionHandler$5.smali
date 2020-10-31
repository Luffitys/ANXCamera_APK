.class Lmiui/view/MiuiSecurityPermissionHandler$5;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/WindowManager;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1200(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi OnClick remove View!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1200(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    const/4 v1, 0x0

    # setter for: Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;
    invoke-static {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1202(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)Landroid/view/View;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    :cond_2c
    goto :goto_46

    :catch_2d
    move-exception v0

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi OnClick  removeView ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # invokes: Lmiui/view/MiuiSecurityPermissionHandler;->onOpenWifiSettingsButtonClicked()V
    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1400(Lmiui/view/MiuiSecurityPermissionHandler;)V

    return-void
.end method
