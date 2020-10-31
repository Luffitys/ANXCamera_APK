.class Lmiui/view/MiuiSecurityPermissionHandler$3;
.super Landroid/database/ContentObserver;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->doPermissionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isLogin:Z


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Z)V
    .registers 5

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$handler:Landroid/os/Handler;

    iput-boolean p4, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$isLogin:Z

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$handler:Landroid/os/Handler;

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$3$1;

    invoke-direct {v1, p0}, Lmiui/view/MiuiSecurityPermissionHandler$3$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
