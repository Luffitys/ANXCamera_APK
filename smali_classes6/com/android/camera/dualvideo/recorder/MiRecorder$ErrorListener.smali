.class Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/recorder/MiRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaRecorder error. what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MiRecorder"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->access$000(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->access$100(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;->doStop()V

    :cond_1
    return-void
.end method
