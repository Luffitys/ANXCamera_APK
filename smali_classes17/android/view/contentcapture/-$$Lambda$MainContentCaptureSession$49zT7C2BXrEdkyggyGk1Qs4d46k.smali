.class public final synthetic Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$49zT7C2BXrEdkyggyGk1Qs4d46k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/MainContentCaptureSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$49zT7C2BXrEdkyggyGk1Qs4d46k;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iput p2, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$49zT7C2BXrEdkyggyGk1Qs4d46k;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$49zT7C2BXrEdkyggyGk1Qs4d46k;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iget v1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$49zT7C2BXrEdkyggyGk1Qs4d46k;->f$1:I

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$scheduleFlush$2$MainContentCaptureSession(I)V

    return-void
.end method
