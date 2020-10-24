.class Lcom/android/camera/features/gif/GifMediaPlayer$3;
.super Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/gif/GifMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$3;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/features/gif/GifMediaPlayer$1;)V

    return-void
.end method


# virtual methods
.method public OnConvertProgress(I)V
    .locals 5

    const-string v0, "MimojiGifMediaPlayer"

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$3;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$300(Lcom/android/camera/features/gif/GifMediaPlayer;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void OnConvertProgress[progressValue] time : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$3;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$400(Lcom/android/camera/features/gif/GifMediaPlayer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void OnConvertProgress[progressValue]  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
