.class Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->showPreviewCover(Z)V

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mimoji void onPreviewPixelsRead[pixels, width, height] bitmap mPreviewCover null"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xf8

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;->hideTimbreProgress()I

    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p0, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$302(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Z)Z

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->OooO00o()V

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimoji void onBufferingUpdate[mp, percent]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mimoji void onCompletion[mp]"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimoji boolean onError[mp, what, extra]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "  "

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji boolean onInfo[mp, what, extra] delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p1

    new-instance p2, Lcom/android/camera/features/mimoji2/module/impl/OooOOo;

    invoke-direct {p2, p0}, Lcom/android/camera/features/mimoji2/module/impl/OooOOo;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/TextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji boolean onInfo[mp, what, extra] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$302(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Z)Z

    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$800(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V

    :goto_0
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mimoji void onPrepared[mp]"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji void onSurfaceReady[surface]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$900(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$1000(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mimoji void onVideoSizeChanged[mp, width, height]"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
