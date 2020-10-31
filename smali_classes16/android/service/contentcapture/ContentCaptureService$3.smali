.class Landroid/service/contentcapture/ContentCaptureService$3;
.super Ljava/lang/Object;
.source "ContentCaptureService.java"

# interfaces
.implements Landroid/service/contentcapture/DataShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/contentcapture/ContentCaptureService;->handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/contentcapture/ContentCaptureService;

.field final synthetic val$callback:Landroid/service/contentcapture/IDataShareCallback;


# direct methods
.method constructor <init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$3;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    iput-object p2, p0, Landroid/service/contentcapture/ContentCaptureService$3;->val$callback:Landroid/service/contentcapture/IDataShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept(Ljava/util/concurrent/Executor;Landroid/service/contentcapture/DataShareReadAdapter;)V
    .registers 7

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;

    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService$3;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    # getter for: Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService;->access$1100(Landroid/service/contentcapture/ContentCaptureService;)Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/service/contentcapture/DataShareReadAdapter;Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;)V

    :try_start_11
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService$3;->val$callback:Landroid/service/contentcapture/IDataShareCallback;

    invoke-interface {v1, v0}, Landroid/service/contentcapture/IDataShareCallback;->accept(Landroid/service/contentcapture/IDataShareReadAdapter;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception v1

    # getter for: Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->access$1200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to accept data sharing"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method public onReject()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$3;->val$callback:Landroid/service/contentcapture/IDataShareCallback;

    invoke-interface {v0}, Landroid/service/contentcapture/IDataShareCallback;->reject()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    # getter for: Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to reject data sharing"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method
