.class public final synthetic Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$uvjEvSXcmP7-uA6i89N3m1TrKCk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/ContentCaptureManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/ContentCaptureManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$uvjEvSXcmP7-uA6i89N3m1TrKCk;->f$0:Landroid/view/contentcapture/ContentCaptureManager;

    return-void
.end method


# virtual methods
.method public final run(Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$uvjEvSXcmP7-uA6i89N3m1TrKCk;->f$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager;->lambda$isContentCaptureFeatureEnabled$1$ContentCaptureManager(Lcom/android/internal/util/SyncResultReceiver;)V

    return-void
.end method
