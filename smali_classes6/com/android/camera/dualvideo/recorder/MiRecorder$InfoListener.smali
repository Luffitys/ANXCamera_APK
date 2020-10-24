.class Lcom/android/camera/dualvideo/recorder/MiRecorder$InfoListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/recorder/MiRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$InfoListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$InfoListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->access$000(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Z

    move-result p1

    const-string p3, "MiRecorder"

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onInfo: ignore event "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p1, 0x320

    if-eq p2, p1, :cond_1

    const/16 p1, 0x321

    if-eq p2, p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onInfo what : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "reached max size."

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$InfoListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->access$100(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;->doStop()V

    :goto_0
    return-void
.end method
