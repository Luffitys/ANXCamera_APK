.class Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# instance fields
.field private stopRecordType:I

.field final synthetic this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V

    return-void
.end method


# virtual methods
.method public OnConvertProgress(I)V
    .locals 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->stopRecordType:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$500(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$600(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji void combineVideoAudio[savePath] time  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getStopRecordType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->stopRecordType:I

    return p0
.end method

.method public setStopRecordType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->stopRecordType:I

    return-void
.end method
