.class Lcom/ss/android/vesdk/TERecorder$4;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/TERecorder$4;Landroid/graphics/SurfaceTexture;)[F
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TERecorder$4;->fetchTransformMatrixFromTexture(Landroid/graphics/SurfaceTexture;)[F

    move-result-object p0

    return-object p0
.end method

.method private fetchTransformMatrixFromTexture(Landroid/graphics/SurfaceTexture;)[F
    .locals 0

    const/16 p0, 0x10

    new-array p0, p0, [F

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-object p0
.end method

.method private getDrawFrameTime(J)D
    .locals 10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v2, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt p0, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    sub-long/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-double p0, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private verifyTexture(I)Z
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenGL has created but encounter getting invalid textureID from render Callback"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onOpenGLCreate()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Couldn\'t find render callback. Consider set render callback first"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/vesdk/TERecorder$IRenderCallback;->onCreateTexture()Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ss/android/medialib/common/Common;->genSurfaceTextureID()I

    move-result v0

    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    new-instance v2, Lcom/ss/android/vesdk/TERecorder$Texture;

    invoke-direct {v2, v0, v1}, Lcom/ss/android/vesdk/TERecorder$Texture;-><init>(ILandroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TERecorder;->access$402(Lcom/ss/android/vesdk/TERecorder;Z)Z

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder$Texture;->getTextureID()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ss/android/vesdk/TERecorder$4;->verifyTexture(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Didn\'t attach render routine to texture due to invalid texture."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorder$Texture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_3
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/TERecorder;->access$502(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/TERecorder$Texture;)Lcom/ss/android/vesdk/TERecorder$Texture;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/TERecorder$Texture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    new-instance v2, Lcom/ss/android/vesdk/TERecorder$4$1;

    invoke-direct {v2, p0}, Lcom/ss/android/vesdk/TERecorder$4$1;-><init>(Lcom/ss/android/vesdk/TERecorder$4;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/TERecorder$IRenderCallback;->onTextureCreated(Lcom/ss/android/vesdk/TERecorder$Texture;)V

    return-void
.end method

.method public onOpenGLDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$400(Lcom/ss/android/vesdk/TERecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/vesdk/TERecorder$IRenderCallback;->onDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder$Texture;->release()V

    :cond_1
    return-void
.end method

.method public onOpenGLRunning()I
    .locals 5

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Couldn\'t find source texture"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder$Texture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Couldn\'t find surfaceTexture from source texture"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v1}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/ss/android/vesdk/TERecorder$4;->getDrawFrameTime(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->onDrawFrameTime(D)I

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$700(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v2}, Lcom/ss/android/vesdk/TERecorder;->access$800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VECameraSettings;->getFacingID()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/TERecorder;->access$900(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v3}, Lcom/ss/android/vesdk/TERecorder;->access$800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VECameraSettings;->getFacingID()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v3

    sget-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->updateRotation(IZ)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v2}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v2

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v3, v3

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setPreviewSizeRatio(F)V

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$700(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return v1
.end method
