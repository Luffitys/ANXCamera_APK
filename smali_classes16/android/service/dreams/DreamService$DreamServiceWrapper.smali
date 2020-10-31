.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$detach$1(Landroid/service/dreams/DreamService;)V
    .registers 1

    # invokes: Landroid/service/dreams/DreamService;->detach()V
    invoke-static {p0}, Landroid/service/dreams/DreamService;->access$500(Landroid/service/dreams/DreamService;)V

    return-void
.end method


# virtual methods
.method public attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$200(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$fKPQo1GZX03b5-nMg-IFcuuxhKs;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$fKPQo1GZX03b5-nMg-IFcuuxhKs;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public detach()V
    .registers 4

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$200(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    new-instance v2, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$2R9T6zqLOUvx4z5eu1pSMWsejpU;

    invoke-direct {v2, v1}, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$2R9T6zqLOUvx4z5eu1pSMWsejpU;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$attach$0$DreamService$DreamServiceWrapper(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # invokes: Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    invoke-static {v0, p1, p2, p3}, Landroid/service/dreams/DreamService;->access$600(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method public synthetic lambda$wakeUp$2$DreamService$DreamServiceWrapper()V
    .registers 3

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x1

    # invokes: Landroid/service/dreams/DreamService;->wakeUp(Z)V
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->access$400(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method

.method onActivityCreated(Landroid/service/dreams/DreamActivity;)V
    .registers 4

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # setter for: Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;
    invoke-static {v0, p1}, Landroid/service/dreams/DreamService;->access$102(Landroid/service/dreams/DreamService;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    # invokes: Landroid/service/dreams/DreamService;->onWindowCreated(Landroid/view/Window;)V
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->access$300(Landroid/service/dreams/DreamService;Landroid/view/Window;)V

    return-void
.end method

.method public wakeUp()V
    .registers 3

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$200(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$mm-Rh3xCTudFT-WRyQZatcwXBss;

    invoke-direct {v1, p0}, Landroid/service/dreams/-$$Lambda$DreamService$DreamServiceWrapper$mm-Rh3xCTudFT-WRyQZatcwXBss;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
