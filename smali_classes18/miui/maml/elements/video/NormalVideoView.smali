.class Lmiui/maml/elements/video/NormalVideoView;
.super Lmiui/maml/elements/video/BaseVideoView;
.source "NormalVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addSurfaceHolderCallback()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/video/NormalVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/video/NormalVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    iget v0, p0, Lmiui/maml/elements/video/NormalVideoView;->mScaleMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_93

    iget v0, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lmiui/maml/elements/video/NormalVideoView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lmiui/maml/elements/video/NormalVideoView;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    if-lez v2, :cond_8f

    iget v2, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    if-lez v2, :cond_8f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_51

    if-ne v4, v6, :cond_51

    move v0, v3

    move v1, v5

    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v6, v1

    iget v7, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v7, v0

    if-ge v6, v7, :cond_41

    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v6, v1

    iget v7, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    div-int v0, v6, v7

    goto :goto_8f

    :cond_41
    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v6, v1

    iget v7, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v7, v0

    if-le v6, v7, :cond_8f

    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v6, v0

    iget v7, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    div-int v1, v6, v7

    goto :goto_8f

    :cond_51
    const/high16 v7, -0x80000000

    if-ne v2, v6, :cond_63

    move v0, v3

    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v6, v0

    iget v8, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    div-int v1, v6, v8

    if-ne v4, v7, :cond_8f

    if-le v1, v5, :cond_8f

    move v1, v5

    goto :goto_8f

    :cond_63
    if-ne v4, v6, :cond_73

    move v1, v5

    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v6, v1

    iget v8, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    div-int v0, v6, v8

    if-ne v2, v7, :cond_8f

    if-le v0, v3, :cond_8f

    move v0, v3

    goto :goto_8f

    :cond_73
    iget v0, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    iget v1, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    if-ne v4, v7, :cond_83

    if-le v1, v5, :cond_83

    move v1, v5

    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v6, v1

    iget v8, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    div-int/2addr v6, v8

    move v0, v6

    :cond_83
    if-ne v2, v7, :cond_8f

    if-le v0, v3, :cond_8f

    move v0, v3

    iget v6, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v6, v0

    iget v7, p0, Lmiui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    div-int v1, v6, v7

    :cond_8f
    :goto_8f
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/video/NormalVideoView;->setMeasuredDimension(II)V

    goto :goto_96

    :cond_93
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/video/BaseVideoView;->onMeasure(II)V

    :goto_96
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/video/NormalVideoView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method protected onSurfaceDestroyed()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/video/NormalVideoView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method protected setFormat(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/video/NormalVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method protected updateVideoSize()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/elements/video/NormalVideoView;->requestLayout()V

    return-void
.end method
