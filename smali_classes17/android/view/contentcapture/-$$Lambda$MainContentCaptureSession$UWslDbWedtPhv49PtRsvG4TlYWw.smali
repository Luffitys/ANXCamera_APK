.class public final synthetic Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$UWslDbWedtPhv49PtRsvG4TlYWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/MainContentCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$UWslDbWedtPhv49PtRsvG4TlYWw;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$UWslDbWedtPhv49PtRsvG4TlYWw;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$onSessionStarted$1$MainContentCaptureSession()V

    return-void
.end method
