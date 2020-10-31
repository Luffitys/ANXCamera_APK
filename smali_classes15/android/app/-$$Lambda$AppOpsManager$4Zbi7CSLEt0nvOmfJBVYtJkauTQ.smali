.class public final synthetic Landroid/app/-$$Lambda$AppOpsManager$4Zbi7CSLEt0nvOmfJBVYtJkauTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$AppOpsManager$4Zbi7CSLEt0nvOmfJBVYtJkauTQ;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/-$$Lambda$AppOpsManager$4Zbi7CSLEt0nvOmfJBVYtJkauTQ;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/app/-$$Lambda$AppOpsManager$4Zbi7CSLEt0nvOmfJBVYtJkauTQ;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/-$$Lambda$AppOpsManager$4Zbi7CSLEt0nvOmfJBVYtJkauTQ;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Landroid/app/AppOpsManager;->lambda$getHistoricalOps$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
