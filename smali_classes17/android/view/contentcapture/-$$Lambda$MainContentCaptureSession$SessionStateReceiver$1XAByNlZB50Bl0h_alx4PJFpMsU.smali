.class public final synthetic Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/MainContentCaptureSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iput p2, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;->f$1:I

    iput-object p3, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iget v1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;->f$1:I

    iget-object v2, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$SessionStateReceiver$1XAByNlZB50Bl0h_alx4PJFpMsU;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->lambda$send$1(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    return-void
.end method
