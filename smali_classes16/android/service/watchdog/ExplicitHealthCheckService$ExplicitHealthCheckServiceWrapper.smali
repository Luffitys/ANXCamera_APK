.class Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;
.super Landroid/service/watchdog/IExplicitHealthCheckService$Stub;
.source "ExplicitHealthCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/ExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExplicitHealthCheckServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/watchdog/ExplicitHealthCheckService;


# direct methods
.method private constructor <init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-direct {p0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/service/watchdog/ExplicitHealthCheckService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    # getter for: Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->access$200(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$pC_jIpmynGf4FhRLSRCGbJwUkGE;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$pC_jIpmynGf4FhRLSRCGbJwUkGE;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getRequestedPackages(Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    # getter for: Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->access$200(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$yycuCTr7mDJWrqK-xpXb1sTmkyA;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$yycuCTr7mDJWrqK-xpXb1sTmkyA;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSupportedPackages(Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    # getter for: Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->access$200(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$5Rv9E4-Jc0y0GMGqI_g-82qtYpg;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$5Rv9E4-Jc0y0GMGqI_g-82qtYpg;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$cancel$2$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onCancelHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getRequestedPackages$4$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetRequestedPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "Requested  package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.requested_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$getSupportedPackages$3$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetSupportedPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "Supported package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.supported_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$request$1$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onRequestHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setCallback$0$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    # setter for: Landroid/service/watchdog/ExplicitHealthCheckService;->mCallback:Landroid/os/RemoteCallback;
    invoke-static {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->access$302(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback;

    return-void
.end method

.method public request(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    # getter for: Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->access$200(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$Gn8La3kwBvbjLET_Nqtstvz2RZg;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$Gn8La3kwBvbjLET_Nqtstvz2RZg;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    # getter for: Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->access$200(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$EnMyVE8D3ameNypg4gr2IMP7BCo;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$EnMyVE8D3ameNypg4gr2IMP7BCo;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
