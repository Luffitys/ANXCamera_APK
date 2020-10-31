.class public Landroid/view/ScrollCaptureSession;
.super Ljava/lang/Object;
.source "ScrollCaptureSession.java"


# instance fields
.field private mClient:Landroid/view/ScrollCaptureClient;

.field private final mPositionInWindow:Landroid/graphics/Point;

.field private final mScrollBounds:Landroid/graphics/Rect;

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureClient;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    iput-object p2, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    iput-object p4, p0, Landroid/view/ScrollCaptureSession;->mClient:Landroid/view/ScrollCaptureClient;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureSession;->mClient:Landroid/view/ScrollCaptureClient;

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_10
    return-void
.end method

.method public getPositionInWindow()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScrollBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public notifyBufferSent(JLandroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ScrollCaptureSession;->mClient:Landroid/view/ScrollCaptureClient;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ScrollCaptureClient;->onRequestImageCompleted(JLandroid/graphics/Rect;)V

    :cond_7
    return-void
.end method
