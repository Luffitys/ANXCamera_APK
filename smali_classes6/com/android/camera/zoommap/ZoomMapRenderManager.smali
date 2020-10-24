.class public Lcom/android/camera/zoommap/ZoomMapRenderManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LINE_WIDTH:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ZoomMapRender"


# instance fields
.field private mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private volatile mMapRect:Landroid/graphics/Rect;

.field private mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

.field private final mTextureTransformMatrix:[F

.field private mWindowSize:Landroid/util/Size;

.field private mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/android/gallery3d/ui/ExtTexture;Landroid/util/Size;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/GLPaint;-><init>(FI)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800c9

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p2, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mWindowSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomMapRender"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drawZoomMap(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v4, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    add-int/lit8 v1, v1, -0x3

    int-to-float v4, v1

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->init(FFFFLcom/android/gallery3d/ui/GLPaint;)Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    const/4 p0, 0x0

    return p0
.end method

.method public updateZoomMapRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    return-void
.end method
