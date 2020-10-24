.class Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private final srcRenderArea:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 4

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    add-int/2addr v3, v1

    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    add-int/2addr v0, v2

    invoke-direct {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public animatePreview(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->shrinkRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    new-instance v9, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-virtual {p0, v9, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->setPreviewAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->animatePreview(I)V

    if-eqz p5, :cond_0

    if-nez p3, :cond_0

    const-string p1, "CameraItem"

    const-string p2, "onUpdate: isCompleted"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$202(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$302(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_0
    return-void
.end method
