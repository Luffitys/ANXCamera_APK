.class public final synthetic Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$HTmdDf687TPcaTnLyPp3wo0gI60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/MainContentCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$HTmdDf687TPcaTnLyPp3wo0gI60;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$HTmdDf687TPcaTnLyPp3wo0gI60;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->lambda$onDestroy$0$MainContentCaptureSession()V

    return-void
.end method
