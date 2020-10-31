.class Landroid/service/contentcapture/ContentCaptureService$2;
.super Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;
.source "ContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/contentcapture/ContentCaptureService;


# direct methods
.method constructor <init>(Landroid/service/contentcapture/ContentCaptureService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$sendEvents$0(Ljava/lang/Object;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 6

    move-object v0, p0

    check-cast v0, Landroid/service/contentcapture/ContentCaptureService;

    # invokes: Landroid/service/contentcapture/ContentCaptureService;->handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->access$1000(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    return-void
.end method


# virtual methods
.method public sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 11

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    # getter for: Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->access$100(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;->INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$2$nqaNcni5MOtmyGkMJfxu_qUHOk4;

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
