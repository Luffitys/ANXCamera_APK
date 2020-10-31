.class Lmiui/view/MiuiSecurityPermissionHandler$3$1;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$3;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$3;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v0, v0, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

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

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-boolean v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$isLogin:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-virtual {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :cond_26
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->access$800(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    # getter for: Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->access$1100(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3d
    return-void
.end method
