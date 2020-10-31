.class public final synthetic Landroid/permission/-$$Lambda$PermissionManager$0l4DEq2HXCCVCBUfdxUjWk3qCIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionManager$0l4DEq2HXCCVCBUfdxUjWk3qCIU;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionManager$0l4DEq2HXCCVCBUfdxUjWk3qCIU;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0}, Landroid/permission/PermissionManager;->lambda$grantDefaultPermissionsToLuiApp$0(Ljava/util/function/Consumer;)V

    return-void
.end method
