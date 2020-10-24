.class public Lcom/android/camera/multi/SplitUpdateListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result p0

    const/4 p1, 0x2

    const-string v0, "SplitTest:"

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "FAILED"

    goto :goto_0

    :cond_1
    const-string p0, "INSTALLED"

    goto :goto_0

    :cond_2
    const-string p0, "INSTALLING"

    goto :goto_0

    :cond_3
    const-string p0, "DOWNLOADED"

    goto :goto_0

    :cond_4
    const-string p0, "DOWNLOADING"

    :goto_0
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Lcom/android/camera/multi/SplitUpdateListenerAdapter;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
