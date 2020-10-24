.class public interface abstract Lcom/android/camera/dualvideo/render/CameraItemInterface;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract alphaInSelectWindowFlag(Z)V
.end method

.method public abstract alphaInSelectedFrame(Z)V
.end method

.method public abstract draw(Lcom/android/gallery3d/ui/GLCanvas;I)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getHandleArea()Landroid/graphics/Rect;
.end method

.method public abstract getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
.end method

.method public abstract getRenderAttri(I)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
.end method

.method public abstract getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
.end method

.method public abstract getSelectFrameAlpha()F
.end method

.method public abstract getSelectWindowFlagAlpha()F
.end method

.method public abstract getSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
.end method

.method public abstract getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isFacingFront()Z
.end method

.method public abstract isPressedInSelectWindow()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onKeyDown()V
.end method

.method public abstract onKeyUp()V
.end method

.method public abstract setPreviewAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V
.end method

.method public abstract setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
.end method

.method public abstract setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V
.end method

.method public abstract setVisibilityWithAnim(ZZ)V
.end method

.method public abstract updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)V
.end method
