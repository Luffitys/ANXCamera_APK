.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerService$1$TbuFGuD1HySgLHbAMINqz-Xt8ZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$TbuFGuD1HySgLHbAMINqz-Xt8ZE;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$TbuFGuD1HySgLHbAMINqz-Xt8ZE;->f$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0}, Landroid/permission/PermissionControllerService$1;->lambda$updateUserSensitiveForApp$3(Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
