.class Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;
.super Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

.field private mEglSurface:Lcom/android/gallery3d/ui/EglWindowSurface;

.field private mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/android/camera/fragment/EffectItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/EffectItemAdapter;Landroid/view/View;Lcom/xiaomi/camera/liveshot/gles/EglCore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090111

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mTextureView:Landroid/view/TextureView;

    const p1, 0x7f090112

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-static {v0}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result p2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->isAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;-><init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->isAnimation()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getLastIndex()I

    move-result p2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$2;-><init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public getEglSurface()Lcom/android/gallery3d/ui/EglWindowSurface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/gallery3d/ui/EglWindowSurface;

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/ui/EglWindowSurface;

    iget-object v1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    invoke-direct {v0, v1, p1}, Lcom/android/gallery3d/ui/EglWindowSurface;-><init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/gallery3d/ui/EglWindowSurface;

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/EffectItemAdapter;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureAvailable width:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/gallery3d/ui/EglWindowSurface;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/EglWindowSurface;->releaseEglSurface()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/gallery3d/ui/EglWindowSurface;

    invoke-static {}, Lcom/android/camera/fragment/EffectItemAdapter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSurfaceTextureDestroyed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-static {}, Lcom/android/camera/fragment/EffectItemAdapter;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged width:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
