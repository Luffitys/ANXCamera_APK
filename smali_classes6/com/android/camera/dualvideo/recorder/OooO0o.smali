.class public final synthetic Lcom/android/camera/dualvideo/recorder/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/OooO0o;->OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/OooO0o;->OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    check-cast p1, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->OooO0OO(Lcom/android/camera/dualvideo/recorder/MiRecorder;)V

    return-void
.end method
