.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$TDPE-yM_sr87lWH1NcSHItfBmxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;

.field public final synthetic f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$TDPE-yM_sr87lWH1NcSHItfBmxI;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$TDPE-yM_sr87lWH1NcSHItfBmxI;->f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$TDPE-yM_sr87lWH1NcSHItfBmxI;->f$2:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$TDPE-yM_sr87lWH1NcSHItfBmxI;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$TDPE-yM_sr87lWH1NcSHItfBmxI;->f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$TDPE-yM_sr87lWH1NcSHItfBmxI;->f$2:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Landroid/permission/PermissionControllerManager;->lambda$countPermissionApps$18(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V

    return-void
.end method
