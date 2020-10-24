.class public Lcom/android/camera/effect/renders/VideoRecorderRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoRecorderRender"


# instance fields
.field private mCinematicEnabled:Z

.field private mEffectId:I

.field private mFirstFrameDrawn:Z

.field private mKaleidoscopeEnabled:Z

.field private mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

.field private mStickerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateSecondRender()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    new-instance v0, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->addCustomRender()V

    return-void
.end method

.method private addCustomRender()V
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00ooO0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isProAmbilightOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/effect/renders/Yuv444ToRgbRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/Yuv444ToRgbRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    return-object v0
.end method

.method private getSecondRender(IZZZ)Lcom/android/camera/effect/renders/Render;
    .locals 3

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-interface {p1, v1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_STICKER:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p2

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-interface {p2, v1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p2

    sget p3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p2

    :cond_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/EffectController;->getCurrentKaleidoscope()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/renders/Render;->setKaleidoscope(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object p2, v2

    :goto_2
    if-eqz p4, :cond_6

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p3

    sget p4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-virtual {p3, p4}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget p4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-interface {p3, v1, p4}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object p3

    sget p4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_CINEMATIC:I

    invoke-virtual {p3, p4}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p3

    goto :goto_3

    :cond_6
    move-object p3, v2

    :cond_7
    :goto_3
    iget-object p4, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_a
    if-eqz p2, :cond_b

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_b
    if-eqz p3, :cond_c

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_c
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondPipeRender()Lcom/android/camera/effect/renders/PipeRender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result p1

    if-lez p1, :cond_d

    iget-object v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    :cond_d
    return-object v2
.end method

.method private updateSecondRender()V
    .locals 9

    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->isStickerEnable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    iget-boolean v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->isKaleidoscopeEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    sget-object v4, Lcom/android/camera/effect/renders/VideoRecorderRender;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    iget-boolean v7, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    iget-boolean v7, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    const-string v7, "effectId: 0x%x->0x%x stickerEnabled: %b->%b KaleidoscopeEnabled: %b->%b"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mCinematicEnabled:Z

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->isCinematicEnable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mCinematicEnabled:Z

    iget v6, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    if-ne v6, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    if-ne v0, v3, :cond_0

    if-eq v4, v5, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mFirstFrameDrawn:Z

    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mStickerEnabled:Z

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mKaleidoscopeEnabled:Z

    iget-boolean v3, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mCinematicEnabled:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/effect/renders/VideoRecorderRender;->getSecondRender(IZZZ)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mRenderPipe:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteBuffer()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/PipeRender;->deleteBuffer()V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/VideoRecorderRender;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result p0

    return p0
.end method

.method public setFilterId(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/VideoRecorderRender;->mEffectId:I

    if-eq p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateSecondRender()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public updateCinematic()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/renders/VideoRecorderRender;->updateSecondRender()V

    return-void
.end method
