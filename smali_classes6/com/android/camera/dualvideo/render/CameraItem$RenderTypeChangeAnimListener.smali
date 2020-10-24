.class Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field private final dstRenderArea:Landroid/graphics/Rect;

.field private final dstRenderTrans:[F

.field private final srcRenderArea:Landroid/graphics/Rect;

.field private final srcRenderTrans:[F

.field final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)V
    .locals 6

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v4, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v4, v2

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v5, v3

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderTrans:[F

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$400(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v2, v0

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v3, v1

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderTrans:[F

    return-void
.end method

.method private getTransRatio(I)F
    .locals 7

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v2, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v5, v3

    div-float/2addr v4, v5

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/render/CameraItem;->getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getCropRatio(Lcom/android/camera/dualvideo/render/LayoutType;)F

    move-result v3

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->getCropRatio(Lcom/android/camera/dualvideo/render/LayoutType;)F

    move-result p0

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    int-to-float p1, v1

    mul-float/2addr v4, p1

    int-to-float p1, v0

    div-float/2addr v4, p1

    sub-float/2addr v4, p0

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    return v2

    :cond_0
    return p1
.end method


# virtual methods
.method public animatePreview(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    int-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->mixArea(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderTrans:[F

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderTrans:[F

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->getTransRatio(I)F

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->mixMatrix([F[FF)[F

    move-result-object v5

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->setPreviewAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->animatePreview(I)V

    if-eqz p5, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$202(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_0
    return-void
.end method
