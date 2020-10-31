.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerService$1$d7FwwlMbNXDw5Sg-_Gg51Tk0Dx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$d7FwwlMbNXDw5Sg-_Gg51Tk0Dx8;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$d7FwwlMbNXDw5Sg-_Gg51Tk0Dx8;->f$0:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Landroid/permission/PermissionControllerService$1;->lambda$revokeRuntimePermissions$1(Lcom/android/internal/infra/AndroidFuture;Ljava/util/Map;)V

    return-void
.end method
