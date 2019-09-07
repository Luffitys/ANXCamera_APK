.class Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;
.super Landroid/os/Handler;
.source "SnapshotRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_DRAW_MAIN_ASYNC:I = 0x1

.field public static final MSG_DRAW_MAIN_SYNC:I = 0x2

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_PREPARE_EFFECT_RENDER:I = 0x6

.field public static final MSG_RELEASE:I = 0x5


# instance fields
.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

.field private mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private applyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B
    .locals 47

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getEffectRender(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init render failed"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v13

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v15, 0x0

    aget-object v2, v2, v15

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v8, 0x1

    aget-object v3, v3, v8

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v20

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plane0 stride =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", plane1 stride = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v2

    iget v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/16 v16, 0x3

    const/16 v17, 0x2

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez v3, :cond_1

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v21

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v22

    iget v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    add-int/lit16 v3, v3, 0x10e

    rem-int/lit16 v3, v3, 0x168

    iget-boolean v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    iget-object v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz v5, :cond_2

    move/from16 v25, v8

    goto :goto_0

    :cond_2
    move/from16 v25, v15

    :goto_0
    const v26, 0x3de147ae    # 0.11f

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-static/range {v21 .. v26}, Lcom/android/camera/Util;->getWatermarkRange(IIIZZF)[I

    move-result-object v18

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-static {v3}, Lcom/xiaomi/camera/base/ImageUtil;->getYuvData(Landroid/media/Image;)[B

    move-result-object v21

    move-object/from16 v3, v21

    move v4, v13

    move v5, v14

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v8, v18

    invoke-static/range {v3 .. v8}, Lcom/android/camera/Util;->getSubYuvImage([BIIII[I)Lcom/android/camera/effect/MiYuvImage;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get sub range data spend total tome ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    move-object/from16 v28, v4

    iget-object v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    move-object/from16 v29, v5

    iget-object v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    move-object/from16 v30, v5

    new-instance v5, Landroid/util/Size;

    move-object/from16 v31, v5

    aget v6, v18, v17

    aget v7, v18, v16

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    iget v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    move/from16 v32, v5

    iget v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    move/from16 v33, v5

    iget v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    move/from16 v34, v5

    iget v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mShootRotation:F

    move/from16 v35, v5

    iget-wide v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDate:J

    move-wide/from16 v36, v5

    iget-boolean v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMirror:Z

    move/from16 v38, v5

    iget-boolean v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    move/from16 v39, v5

    iget-boolean v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mIsGradienterOn:Z

    move/from16 v40, v5

    iget-object v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    move-object/from16 v41, v5

    iget-object v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    move-object/from16 v42, v5

    iget-object v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-object/from16 v43, v5

    iget-object v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    move-object/from16 v44, v5

    invoke-direct/range {v28 .. v44}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;-><init>(Landroid/media/Image;Landroid/util/Size;Landroid/util/Size;IIIFJZZZLjava/lang/String;Ljava/lang/String;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Ljava/util/List;)V

    iput-object v3, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    move-object v10, v4

    move-object/from16 v23, v21

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v23, v18

    move-object v10, v12

    move v9, v15

    :goto_1
    invoke-direct {v11, v0, v10, v15}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    instance-of v3, v0, Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v3, :cond_4

    iget-object v3, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    :cond_4
    if-eqz v9, :cond_5

    aget v3, v18, v17

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, v13

    :goto_2
    if-eqz v9, :cond_6

    aget v3, v18, v16

    move v7, v3

    goto :goto_3

    :cond_6
    move v7, v14

    :goto_3
    invoke-direct {v11, v8, v7}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkFrameBuffer(II)V

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iget-object v5, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    invoke-virtual {v0, v10}, Lcom/android/camera/effect/renders/PipeRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawTime="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v3, v24, v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/PipeRender;->deleteBuffer()V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    if-eqz v2, :cond_8

    if-le v13, v14, :cond_7

    sub-int v0, v13, v14

    div-int/lit8 v0, v0, 0x2

    move/from16 v25, v0

    move/from16 v22, v14

    move/from16 v24, v22

    move/from16 v26, v15

    goto :goto_4

    :cond_7
    sub-int v0, v14, v13

    div-int/lit8 v0, v0, 0x2

    move/from16 v26, v0

    move/from16 v22, v13

    move/from16 v24, v22

    move/from16 v25, v15

    goto :goto_4

    :cond_8
    move/from16 v22, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v25

    :goto_4
    iget-boolean v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_f

    if-eqz v9, :cond_9

    aget v0, v18, v15

    neg-int v0, v0

    const/4 v6, 0x1

    aget v1, v18, v6

    neg-int v1, v1

    move/from16 v21, v0

    move/from16 v27, v1

    goto :goto_5

    :cond_9
    const/4 v6, 0x1

    move/from16 v21, v15

    move/from16 v27, v21

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    if-nez v9, :cond_b

    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    add-int/lit16 v0, v0, 0x10e

    rem-int/lit16 v3, v0, 0x168

    iget-boolean v4, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    iget-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz v0, :cond_a

    move v5, v6

    goto :goto_6

    :cond_a
    move v5, v15

    :goto_6
    const v0, 0x3de147ae    # 0.11f

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v30, v9

    move v9, v6

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->getWatermarkRange(IIIZZF)[I

    move-result-object v18

    aget v0, v18, v15

    aget v1, v18, v9

    move/from16 v31, v0

    move/from16 v32, v1

    goto :goto_7

    :cond_b
    move/from16 v30, v9

    move v9, v6

    move/from16 v31, v15

    move/from16 v32, v31

    :goto_7
    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegQuality:I

    const/16 v1, 0x61

    if-lez v0, :cond_d

    if-le v0, v1, :cond_c

    goto :goto_8

    :cond_c
    move v6, v0

    goto :goto_9

    :cond_d
    :goto_8
    move v6, v1

    :goto_9
    iget-object v1, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    iget-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v33

    iget-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v34

    iget v5, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v21

    move/from16 v3, v27

    move v4, v13

    move/from16 v37, v5

    move v5, v14

    move v15, v6

    move/from16 v6, v33

    move/from16 v45, v7

    move/from16 v7, v34

    move/from16 v46, v8

    move/from16 v8, v37

    move/from16 v33, v14

    move/from16 v14, v30

    move/from16 v30, v13

    move v13, v9

    move/from16 v9, v35

    move-object v13, v10

    move/from16 v10, v36

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZZ)V

    add-int v0, v31, v25

    add-int v1, v32, v26

    aget v2, v18, v17

    aget v3, v18, v16

    invoke-static {v0, v1, v2, v3, v15}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(IIIII)[B

    move-result-object v8

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for remove watermark spend more time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v28

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v1, v21, v25

    add-int v2, v27, v26

    iget v5, v13, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    iget-object v6, v13, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(IIIIILjava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "watermarkTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v28

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    if-eqz v14, :cond_e

    new-instance v0, Landroid/util/Size;

    move/from16 v1, v45

    move/from16 v3, v46

    invoke-direct {v0, v3, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_a

    :cond_e
    move/from16 v1, v45

    move/from16 v3, v46

    iget-object v0, v13, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    :goto_a
    invoke-direct {v11, v0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkWatermarkFrameBuffer(Landroid/util/Size;)V

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-direct {v11, v2}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/renders/RgbToYuvRender;

    const/4 v6, 0x0

    invoke-direct {v11, v2, v13, v6}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v6, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    iget-object v6, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v40

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/16 v45, 0x1

    move-object/from16 v39, v2

    move/from16 v43, v6

    move/from16 v44, v0

    invoke-virtual/range {v39 .. v45}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(IFFFFZ)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rgb2YuvTime="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v18

    goto :goto_b

    :cond_f
    move v1, v7

    move v3, v8

    move/from16 v30, v13

    move/from16 v33, v14

    move v14, v9

    move-object v13, v10

    move-object/from16 v5, v18

    const/4 v8, 0x0

    :goto_b
    const/16 v0, 0xd05

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v14, :cond_10

    move v0, v3

    goto :goto_c

    :cond_10
    iget-object v0, v13, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    :goto_c
    if-eqz v14, :cond_11

    goto :goto_d

    :cond_11
    iget-object v1, v13, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    :goto_d
    int-to-double v2, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v3, v1

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double/2addr v3, v9

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int v4, v2, v3

    const/4 v9, 0x4

    mul-int/2addr v4, v9

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x1908

    const/16 v44, 0x1401

    move/from16 v41, v2

    move/from16 v42, v3

    move-object/from16 v45, v4

    invoke-static/range {v39 .. v45}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0x0

    aput-object v2, v9, v18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v9, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v16

    const-string v0, "readSize=%dx%d imageSize=%dx%d"

    invoke-static {v15, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    if-eqz v14, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    move-object/from16 v16, v23

    move/from16 v17, v22

    move/from16 v18, v24

    move-object/from16 v22, v5

    invoke-static/range {v16 .. v22}, Lcom/android/camera/Util;->coverSubYuvImage([BIIII[B[I)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cover sub range data spend total time ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, v23

    goto :goto_e

    :cond_12
    move-object v6, v0

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v13, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-static {v2, v6, v14}, Lcom/xiaomi/camera/base/ImageUtil;->updateYuvImage(Landroid/media/Image;[BZ)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImageTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_13

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v33

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->reverseCalculateRange(IIII[I)[I

    move-result-object v0

    iput-object v8, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_13
    return-object v6
.end method

.method private blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B
    .locals 51

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/16 v1, 0xd33

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v0

    const-string v14, "TOTAL"

    invoke-virtual {v0, v14}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getEffectRender(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_0
    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v10

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v8, 0x0

    aget-object v0, v0, v8

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/image/MemYuvImage;

    move-result-object v2

    iput v10, v2, Lcom/android/camera/effect/framework/image/MemYuvImage;->mWidth:I

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/image/MemYuvImage;

    move-result-object v2

    iput v9, v2, Lcom/android/camera/effect/framework/image/MemYuvImage;->mHeight:I

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/image/MemYuvImage;

    move-result-object v2

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/image/MemYuvImage;->parseImage(Landroid/media/Image;)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plane0 stride =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", plane1 stride = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v11, v15, v12, v7}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/graphics/Splitter;

    move-result-object v1

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v4

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v0

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$800(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v17

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$900(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v18

    move v2, v10

    move v3, v9

    move/from16 v19, v5

    move v5, v0

    move v0, v6

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/framework/graphics/Splitter;->split(IIIIII)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v1

    if-eqz v1, :cond_2

    if-le v10, v9, :cond_1

    sub-int v2, v10, v9

    div-int/2addr v2, v13

    move/from16 v17, v2

    move/from16 v18, v8

    move v5, v9

    goto :goto_0

    :cond_1
    sub-int v2, v9, v10

    div-int/2addr v2, v13

    move/from16 v18, v2

    move/from16 v17, v8

    move v5, v10

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_2
    move/from16 v17, v8

    move/from16 v18, v17

    move v5, v9

    move v6, v10

    :goto_1
    iget-boolean v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    const/16 v27, 0x3

    if-eqz v2, :cond_4

    iget v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    add-int/lit16 v3, v3, 0x10e

    rem-int/lit16 v3, v3, 0x168

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz v4, :cond_3

    const/16 v25, 0x1

    goto :goto_2

    :cond_3
    move/from16 v25, v8

    :goto_2
    const v26, 0x3de147ae    # 0.11f

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v3

    move/from16 v24, v2

    invoke-static/range {v21 .. v26}, Lcom/android/camera/Util;->getWatermarkRange(IIIZZF)[I

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    aget v4, v2, v8

    add-int v4, v4, v17

    int-to-float v4, v4

    const/4 v13, 0x1

    aget v20, v2, v13

    add-int v13, v20, v18

    int-to-float v13, v13

    aget v20, v2, v8

    const/16 v21, 0x2

    aget v23, v2, v21

    add-int v20, v20, v23

    add-int v8, v20, v17

    int-to-float v8, v8

    const/16 v20, 0x1

    aget v22, v2, v20

    aget v24, v2, v27

    add-int v22, v22, v24

    move/from16 v24, v0

    add-int v0, v22, v18

    int-to-float v0, v0

    invoke-direct {v3, v4, v13, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    aget v4, v2, v0

    add-int v4, v4, v17

    aget v0, v2, v20

    add-int v0, v0, v18

    const/4 v8, 0x2

    aget v13, v2, v8

    aget v8, v2, v27

    move/from16 v20, v5

    const/4 v5, 0x4

    invoke-static {v4, v0, v13, v8, v5}, Lcom/android/camera/effect/ShaderNativeUtil;->genWaterMarkRange(IIIII)V

    move-object v13, v2

    move-object v8, v3

    goto :goto_3

    :cond_4
    move/from16 v24, v0

    move/from16 v20, v5

    const/4 v5, 0x4

    move-object/from16 v8, v16

    move-object v13, v8

    :goto_3
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez v0, :cond_5

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz v0, :cond_6

    :cond_5
    const/16 v25, 0x1

    goto :goto_4

    :cond_6
    const/16 v25, 0x0

    :goto_4
    const/4 v3, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "[loop%d/%d]begin"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/effect/framework/graphics/Block;

    iget v1, v2, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    iget v0, v2, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    invoke-virtual {v2, v10, v9}, Lcom/android/camera/effect/framework/graphics/Block;->getOffset(II)[I

    move-result-object v26

    const/16 v23, 0x0

    aget v5, v26, v23

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v29, v2

    const/4 v5, 0x1

    aget v2, v26, v5

    int-to-float v2, v2

    iput v2, v4, Landroid/graphics/RectF;->top:F

    aget v2, v26, v23

    add-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, v4, Landroid/graphics/RectF;->right:F

    aget v2, v26, v5

    add-int/2addr v2, v0

    int-to-float v2, v2

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    if-eqz v25, :cond_7

    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v30

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v31

    move/from16 v32, v6

    iget v6, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v33, v7

    iget v7, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v34

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v35

    move-object/from16 v36, v14

    move/from16 v14, v24

    move-object/from16 v24, v13

    move v13, v0

    move-object/from16 v0, p0

    move v12, v1

    move v1, v2

    move/from16 v37, v9

    move-object/from16 v9, v29

    move v2, v5

    move/from16 v29, v3

    move/from16 v3, v30

    move-object v5, v4

    move/from16 v4, v31

    move-object/from16 v38, v5

    move/from16 v39, v20

    move v5, v6

    move/from16 v40, v32

    move v6, v7

    move-object/from16 v20, v33

    move/from16 v7, v34

    move-object/from16 v41, v8

    move/from16 v50, v23

    move-object/from16 v23, v9

    move/from16 v9, v50

    move/from16 v8, v35

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->rectangle_collision(FFFFFFFF)Z

    move-result v0

    if-nez v0, :cond_8

    move-object/from16 v12, p1

    move/from16 v34, v10

    move-object/from16 v30, v15

    move/from16 v32, v19

    move/from16 v31, v37

    move/from16 v42, v40

    move-object/from16 v10, v41

    const/4 v0, 0x2

    const/4 v2, 0x1

    move/from16 v37, v9

    move-object/from16 v9, v38

    move/from16 v40, v39

    move/from16 v39, v14

    goto/16 :goto_7

    :cond_7
    move v12, v1

    move-object/from16 v38, v4

    move/from16 v40, v6

    move-object/from16 v41, v8

    move/from16 v37, v9

    move-object/from16 v36, v14

    move/from16 v39, v20

    move/from16 v9, v23

    move/from16 v14, v24

    move-object/from16 v23, v29

    move/from16 v29, v3

    move-object/from16 v20, v7

    move-object/from16 v24, v13

    move v13, v0

    :cond_8
    instance-of v0, v15, Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_9

    invoke-virtual {v15, v12, v13}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    :cond_9
    invoke-direct {v11, v12, v13}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkFrameBuffer(II)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    invoke-static {v9, v9, v12, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move/from16 v7, v19

    move-object/from16 v0, v23

    move/from16 v8, v37

    invoke-virtual {v0, v14, v7, v10, v8}, Lcom/android/camera/effect/framework/graphics/Block;->getYUVOffset(IIII)[I

    move-result-object v19

    aget v0, v19, v9

    move v6, v12

    move-object/from16 v12, p1

    iput v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetY:I

    const/4 v0, 0x1

    aget v1, v19, v0

    iput v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetUV:I

    iput v6, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    iput v13, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    invoke-virtual {v15, v12}, Lcom/android/camera/effect/renders/PipeRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "[loop%d/%d]gl drawFrame"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    new-instance v0, Landroid/util/Size;

    move/from16 v4, v39

    move/from16 v5, v40

    invoke-direct {v0, v5, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_b

    new-instance v3, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    const-string v2, "drawWaterMark"

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    aget v0, v26, v9

    sub-int v23, v17, v0

    const/4 v0, 0x1

    aget v1, v26, v0

    sub-int v28, v18, v1

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    move-object/from16 v30, v2

    aget v2, v26, v9

    neg-int v2, v2

    aget v9, v26, v0

    neg-int v9, v9

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v32

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v33

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v39, v14

    move-object/from16 v14, v30

    move-object/from16 v30, v15

    move-object v15, v3

    move v3, v9

    move/from16 v40, v4

    move v4, v10

    move/from16 v42, v5

    move v5, v8

    move v9, v6

    move/from16 v6, v32

    move/from16 v32, v7

    move/from16 v7, v33

    move/from16 v33, v8

    move/from16 v8, v37

    move/from16 v31, v33

    const/16 v37, 0x0

    move/from16 v33, v13

    move v13, v9

    move/from16 v9, v34

    move/from16 v34, v10

    move/from16 v10, v35

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZZ)V

    move-object/from16 v9, v38

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object/from16 v10, v41

    iget v5, v10, Landroid/graphics/RectF;->left:F

    iget v6, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->rectangle_collision(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    iget v5, v10, Landroid/graphics/RectF;->left:F

    iget v6, v10, Landroid/graphics/RectF;->top:F

    iget v7, v10, Landroid/graphics/RectF;->right:F

    iget v8, v10, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getIntersectRect(FFFFFFFF)[F

    move-result-object v0

    aget v1, v0, v37

    float-to-int v2, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    float-to-int v3, v3

    const/4 v4, 0x2

    aget v5, v0, v4

    aget v4, v0, v37

    sub-float/2addr v5, v4

    float-to-int v4, v5

    aget v5, v0, v27

    aget v0, v0, v1

    sub-float/2addr v5, v0

    float-to-int v5, v5

    aget v6, v26, v37

    aget v7, v26, v1

    const/4 v8, 0x4

    invoke-static/range {v2 .. v8}, Lcom/android/camera/effect/ShaderNativeUtil;->mergeWaterMarkRange(IIIIIII)V

    iget v5, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    iget-object v6, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v42

    move/from16 v4, v40

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(IIIIILjava/lang/String;Z)V

    :cond_a
    invoke-virtual {v15, v14}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    new-instance v0, Landroid/util/Size;

    move/from16 v1, v33

    invoke-direct {v0, v13, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v11, v0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkWatermarkFrameBuffer(Landroid/util/Size;)V

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-direct {v11, v2}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/renders/RgbToYuvRender;

    const/4 v3, 0x1

    invoke-direct {v11, v2, v12, v3}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v3}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v3}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v44

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/16 v49, 0x1

    move-object/from16 v43, v2

    move/from16 v47, v3

    move/from16 v48, v0

    invoke-virtual/range {v43 .. v49}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(IFFFFZ)V

    const-string v0, "drawWaterMark rgb2yuv"

    invoke-virtual {v15, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move/from16 v40, v4

    move/from16 v42, v5

    move/from16 v32, v7

    move/from16 v31, v8

    move/from16 v37, v9

    move/from16 v34, v10

    move v1, v13

    move/from16 v39, v14

    move-object/from16 v30, v15

    move-object/from16 v9, v38

    move-object/from16 v10, v41

    move v13, v6

    :goto_6
    const/16 v0, 0xd05

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    aget v0, v19, v37

    aget v3, v19, v2

    invoke-static {v13, v1, v0, v3}, Lcom/android/camera/effect/ShaderNativeUtil;->mergeYUV(IIII)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v37

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "[loop%d/%d]gl mergeYUV"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v3, v29, 0x1

    move-object v4, v9

    move-object v8, v10

    move-object/from16 v7, v20

    move-object/from16 v13, v24

    move-object/from16 v15, v30

    move/from16 v9, v31

    move/from16 v19, v32

    move/from16 v10, v34

    move-object/from16 v14, v36

    move/from16 v24, v39

    move/from16 v20, v40

    move/from16 v6, v42

    const/4 v5, 0x4

    goto/16 :goto_5

    :cond_c
    move-object/from16 v24, v13

    move-object/from16 v36, v14

    move-object/from16 v30, v15

    invoke-virtual/range {v30 .. v30}, Lcom/android/camera/effect/renders/PipeRender;->deleteBuffer()V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_d

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderNativeUtil;->getWaterMarkRange(II)[B

    move-result-object v6

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->reverseCalculateRange(IIII[I)[I

    move-result-object v0

    iput-object v6, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_d
    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    return-object v16
.end method

.method private checkFrameBuffer(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    return-void
.end method

.method private checkWatermarkFrameBuffer(Landroid/util/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    return-void
.end method

.method private compress(Landroid/graphics/Bitmap;)[B
    .locals 2

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;IIIIIIIZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/mi/config/b;->Zh()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p9, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    move-object v1, p1

    invoke-direct {v0, p1}, Lcom/android/camera/watermark/WaterMarkBitmap;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v11, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;

    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;-><init>(Landroid/graphics/Bitmap;IIIIIFF)V

    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getOrientation()I

    move-result v1

    sub-int v1, p8, v1

    move-object/from16 p4, p0

    move-object/from16 p5, v11

    move/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, v1

    move/from16 p9, p10

    invoke-direct/range {p4 .. p9}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->releaseBitmap()V

    const-class v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Draw age_gender_and_magic_mirror water mark"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private drawImage(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B

    move-result-object p0

    :goto_1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mainLen="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    const-string p0, "null"

    goto :goto_2

    :cond_2
    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    add-int/lit16 p5, p4, 0x168

    rem-int/lit16 p5, p5, 0x168

    iget v2, p1, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    const/16 v3, 0x5a

    const/high16 v4, 0x43340000    # 180.0f

    if-eq p5, v3, :cond_1

    const/16 v3, 0x10e

    if-ne p5, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    invoke-virtual {p5, v3, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p5, v4, v1, v0, v1}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p5, v2, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    iget p5, p1, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    div-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v1, v1}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-int p5, p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p5, p3

    int-to-float p5, p5

    invoke-virtual {v2, v1, p5}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p5, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p5, p4, v1, v1, v0}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    neg-int p5, p2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float p5, p5

    neg-int v0, p3

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4, p5, v0}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    :cond_3
    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p4}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object p4

    new-instance p5, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result v0

    add-int v2, p2, v0

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result p2

    add-int v3, p3, p2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v5

    move-object v0, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-virtual {p4, p5}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getEffectRender(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;
    .locals 4

    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV2RGB:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    iget-boolean v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mIsGradienterOn:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const-string v3, "circle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    const-string v3, "parallel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_4
    :goto_1
    iget-boolean p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez p1, :cond_5

    sget p1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_5
    return-object v0
.end method

.method private getGPURBGA(IIII)Landroid/graphics/Bitmap;
    .locals 9

    mul-int p0, p3, p4

    new-array v0, p0, [I

    new-array p0, p0, [I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p1, v8

    move p2, p1

    :goto_0
    if-ge p1, p4, :cond_1

    move v1, p2

    move p2, v8

    :goto_1
    if-ge p2, p3, :cond_0

    aget v2, v0, v1

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v2, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    const v5, -0xff0100

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move p2, v1

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getGPUYYY(IIII)Landroid/graphics/Bitmap;
    .locals 10

    shr-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, p4, 0x1

    mul-int p0, v2, v2

    mul-int/lit8 p0, p0, 0x4

    new-array p0, p0, [B

    mul-int v7, p3, p4

    new-array v8, v7, [I

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p1, v9

    :goto_0
    if-ge v9, v7, :cond_0

    aget-byte p2, p0, v9

    shl-int/lit8 v0, p2, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    and-int/lit16 p2, p2, 0xff

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    or-int/2addr p2, v0

    aput p2, v8, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, p3, p4, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getIntersectRect(FFFFFFFF)[F
    .locals 1

    const/4 p0, 0x4

    new-array p0, p0, [F

    cmpl-float v0, p1, p5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    const/4 p5, 0x0

    aput p1, p0, p5

    const/4 p1, 0x1

    cmpl-float p5, p2, p6

    if-lez p5, :cond_1

    goto :goto_1

    :cond_1
    move p2, p6

    :goto_1
    aput p2, p0, p1

    const/4 p1, 0x2

    cmpg-float p2, p3, p7

    aput p7, p0, p1

    const/4 p1, 0x3

    cmpg-float p2, p4, p8

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    move p4, p8

    :goto_2
    aput p4, p0, p1

    return-object p0
.end method

.method private initEGL(Landroid/opengl/EGLContext;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    new-instance v1, Lcom/android/camera/effect/framework/gles/EglCore;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/camera/effect/framework/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1002(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/EglCore;)Lcom/android/camera/effect/framework/gles/EglCore;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;->release()V

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    new-instance p2, Lcom/android/camera/effect/framework/gles/PbufferSurface;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;-><init>(Lcom/android/camera/effect/framework/gles/EglCore;II)V

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    return-void
.end method

.method private rectangle_collision(FFFFFFFF)Z
    .locals 0

    add-float/2addr p7, p5

    cmpl-float p0, p1, p7

    if-gtz p0, :cond_0

    add-float/2addr p1, p3

    cmpg-float p0, p1, p5

    if-ltz p0, :cond_0

    add-float/2addr p8, p6

    cmpl-float p0, p2, p8

    if-gtz p0, :cond_0

    add-float/2addr p2, p4

    cmpg-float p0, p2, p6

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    :cond_0
    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2400(Lcom/android/camera/effect/renders/SnapshotRender;)V

    return-void
.end method

.method private reverseCalculateRange(IIII[I)[I
    .locals 3

    const/4 p0, 0x4

    new-array p0, p0, [I

    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    if-eq p3, p4, :cond_0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "orgin w:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " origin h:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " image w:"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " image h:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in different ratio"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    aget p2, p5, p1

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    aput p2, p0, p1

    const/4 p1, 0x1

    aget p2, p5, p1

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    aput p2, p0, p1

    const/4 p1, 0x2

    aget p2, p5, p1

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    aput p2, p0, p1

    const/4 p1, 0x3

    aget p2, p5, p1

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    aput p2, p0, p1

    return-object p0
.end method

.method private updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result p3

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result p0

    invoke-virtual {p1, p3, p0}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget-object p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p0, p3}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    :goto_0
    iget-object p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget-object p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p0, p3}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    iget-object p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    iget-boolean p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMirror:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    iget-object p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget-object p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p0, p3}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    iget p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    iget p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mShootRotation:F

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    iget p0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    return-void
.end method


# virtual methods
.method public drawWaterMark(IIIIILjava/lang/String;Z)V
    .locals 8

    if-eqz p6, :cond_0

    new-instance v1, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;

    invoke-direct {v1, p6, p3, p4, p5}, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;-><init>(Ljava/lang/String;III)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    :cond_0
    const/4 p6, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotRender;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isFrontWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotRender;)Landroid/graphics/Bitmap;

    move-result-object p6

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotRender;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isDualWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_2

    iget-object p6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Ljava/lang/String;

    move-result-object p6

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    iget-object p6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1502(Lcom/android/camera/effect/renders/SnapshotRender;Ljava/lang/String;)Ljava/lang/String;

    iget-object p6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1402(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    iget-object p6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotRender;)Landroid/graphics/Bitmap;

    move-result-object p6

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isUltraWatermarkEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotRender;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1702(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotRender;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotRender;)Landroid/graphics/Bitmap;

    move-result-object p6

    :cond_4
    :goto_0
    move-object v1, p6

    if-eqz v1, :cond_5

    new-instance p6, Lcom/android/camera/effect/renders/ImageWaterMark;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getSize()F

    move-result v5

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getPaddingX()F

    move-result v6

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getPaddingY()F

    move-result v7

    move-object v0, p6

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/ImageWaterMark;-><init>(Landroid/graphics/Bitmap;IIIFFF)V

    move-object v2, p0

    move-object v3, p6

    move v4, p1

    move v5, p2

    move v6, p5

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    :cond_5
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->release()V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;

    iget-object v0, p1, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;->mAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    iget-object p1, p1, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;->mBlocker:Landroid/os/ConditionVariable;

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$500(Lcom/android/camera/effect/renders/SnapshotRender;II)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$602(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const/16 v6, 0xd33

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    move v6, v1

    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v7

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    if-le v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v8

    div-int/2addr v8, v3

    invoke-static {v7, v8}, Lcom/android/camera/effect/renders/SnapshotRender;->access$602(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    div-int/lit8 v4, v4, 0x2

    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_4

    move v6, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$702(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$802(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$902(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$712(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    :cond_6
    invoke-direct {p0, v0, v6}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawImage(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)Z

    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    :cond_7
    :goto_1
    new-array p0, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    const-string v0, "yuv image is broken width %d height %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawImage(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)Z

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$100(Lcom/android/camera/effect/renders/SnapshotRender;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->release()V

    :cond_9
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$200(Lcom/android/camera/effect/renders/SnapshotRender;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$310(Lcom/android/camera/effect/renders/SnapshotRender;)I

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->initEGL(Landroid/opengl/EGLContext;Z)V

    new-instance p1, Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {p1}, Lcom/android/camera/effect/SnapshotCanvas;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    :cond_b
    :goto_2
    return-void
.end method
