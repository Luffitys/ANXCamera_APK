.class Lmiui/view/MiuiSecurityPermissionHandler$2;
.super Landroid/database/ContentObserver;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Landroid/accounts/Account;)V
    .registers 5

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    invoke-direct {v1, p0}, Lmiui/view/MiuiSecurityPermissionHandler$2$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
