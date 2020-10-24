.class Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameRefresh(Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameRefresh emoExtraInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$200(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$200(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$200(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->emoGLRender(Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;)V

    :cond_0
    return-void
.end method

.method public onMakeMediaEnd()V
    .locals 4

    invoke-static {}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMakeMediaEnd \u65f6\u95f4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$200(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$200(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$200(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->stopRecording()V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$300(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->updateEmoticonGifProgress(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "release_avatar"

    const-string v0, "-> for break ---"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
