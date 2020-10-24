.class public Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENCODER_DEVICE_K2:I = 0x1

.field public static final ENCODER_DEVICE_OTHERS:I = 0x0

.field public static final ENCODER_FLAG_H264:I = 0x0

.field public static final ENCODER_FLAG_H265:I = 0x1

.field public static final ENCODER_FLAG_RGB:I = 0x0

.field public static final ENCODER_FLAG_YUV:I = 0x1

.field public static final ENCODER_FLAG_YUV_NV12:I = 0x2

.field public static final ENCODER_FLAG_YUV_NV21:I = 0x3

.field public static final ENC_STATE_FINISHED_FAILED:I = 0x2

.field public static final ENC_STATE_FINISHED_NORMAL:I = 0x1

.field public static final ENC_STATE_RECORDING:I = 0x0

.field public static final FLAG_FILM_SIZE_OFF:I = 0x0

.field public static final FLAG_FILM_SIZE_ON:I = 0x1

.field public static final FLAG_RUN:I = 0x1

.field public static final FLAG_STOP:I = 0x0

.field public static final RUN_STATE_BAD_ALGO_RESLUT:I = 0x4

.field public static final RUN_STATE_FAILED:I = -0x2

.field public static final RUN_STATE_INITIALIZED:I = 0x1

.field public static final RUN_STATE_MOVE_OUT_FRAME:I = 0x5

.field public static final RUN_STATE_MOVE_OUT_ZOOM:I = 0x6

.field public static final RUN_STATE_NORMAL_END:I = 0x3

.field public static final RUN_STATE_NOT_READY:I = -0x1

.field public static final RUN_STATE_RUNNING:I = 0x2

.field public static final RUN_STATE_WAITING:I = 0x0

.field private static TAG:Ljava/lang/String; = "DollyZoomCamera"


# instance fields
.field private mDollyZoomBlock:J

.field private mMediaFilterCamera:J

.field private mRender:J

.field private m_device_type:I

.field private m_flag_encode_type:I

.field private m_flag_film_state:I

.field private m_flag_run_state:I

.field private m_input_h:I

.field private m_input_w:I

.field private m_is_initialized:Z

.field private m_land_ref_b_B:D

.field private m_land_ref_b_L:D

.field private m_land_ref_b_R:D

.field private m_land_ref_b_T:D

.field private m_now_state:I

.field private m_port_ref_b_B:D

.field private m_port_ref_b_L:D

.field private m_port_ref_b_R:D

.field private m_port_ref_b_T:D

.field private m_ref_box_B:D

.field private m_ref_box_L:D

.field private m_ref_box_R:D

.field private m_ref_box_T:D

.field private m_rotate_angle:I

.field private m_save_video_path:Ljava/lang/String;

.field private m_yuv_data_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DollyZoom"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sdcard/default_dz_video.mp4"

    iput-object v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_now_state:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_yuv_data_type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    const/16 v1, 0xf00

    iput v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    const/16 v1, 0x870

    iput v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    const-wide v1, 0x3fc3333333333333L    # 0.15

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    iput-wide v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    const-wide v1, 0x3fe999999999999aL    # 0.8

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    const-wide v1, 0x3fcd70a3d70a3d71L    # 0.23

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_L:D

    const-wide v1, 0x3fe8f5c28f5c28f6L    # 0.78

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_R:D

    const-wide v1, 0x3fc999999999999aL    # 0.2

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_T:D

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_B:D

    const-wide v1, 0x3fd999999999999aL    # 0.4

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_L:D

    const-wide v1, 0x3fe3333333333333L    # 0.6

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_R:D

    const-wide v1, 0x3fc5c28f5c28f5c3L    # 0.17

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_T:D

    const-wide v1, 0x3febd70a3d70a3d7L    # 0.87

    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_B:D

    iput-boolean v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct MediaEffectCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mMediaFilterCamera:J

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    return-void
.end method

.method private static native ConstructRenderAndPipelineJni(IIDDDDII)J
.end method

.method private static native ConstructRenderJni()J
.end method

.method private static native DestructDollyZoomBlockJni(J)V
.end method

.method private static native DestructRenderJni(J)V
.end method

.method private static native DoSomethingAtStopJni(J)J
.end method

.method private static native GetNowEncoderStateJni(J)I
.end method

.method private static native GetNowScaleJni(J)D
.end method

.method private static native GetNowStateJni(J)I
.end method

.method private static native InitRenderJni(JIIII)V
.end method

.method private static native PausePipelineJni(J)J
.end method

.method private static native PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIJI)J
.end method

.method private static native RecoverPipelineJni(J)J
.end method

.method private RefreshReferenceBox()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    if-eqz v0, :cond_2

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_L:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_R:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_T:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_B:D

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_L:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_R:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_T:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_B:D

    :goto_1
    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    :cond_3
    return-void
.end method

.method private static native RenderFrameJni(J)V
.end method

.method private static native ResetDollyZoomStateJni(J)J
.end method

.method private static native SetDollyZoomOrientationJni(JIDDDD)J
.end method

.method private static native SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J
.end method


# virtual methods
.method public ConstructMediaEffectCamera(II)V
    .locals 12

    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    iput p2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    iget-boolean p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RefreshReferenceBox()V

    iget v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    iget v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v4, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v6, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v8, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    iget v10, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_yuv_data_type:I

    iget v11, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    invoke-static/range {v0 .. v11}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRenderAndPipelineJni(IIDDDDII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    sget-object p1, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "construct mDollyZoomBlock: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    :cond_0
    return-void
.end method

.method public ConstructMediaEffectCamera(III)V
    .locals 12

    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    iput p2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    iput p3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    iget-boolean p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RefreshReferenceBox()V

    iget v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    iget v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v4, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v6, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v8, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    iget v10, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_yuv_data_type:I

    iget v11, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    invoke-static/range {v0 .. v11}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRenderAndPipelineJni(IIDDDDII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    sget-object p1, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "construct mDollyZoomBlock: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    :cond_0
    return-void
.end method

.method public ConstructRender()V
    .locals 2

    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct ConstructRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRenderJni()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    return-void
.end method

.method public DestructMediaEffectCamera()V
    .locals 4

    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destruct mDollyZoomBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DestructDollyZoomBlockJni(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    :cond_0
    return-void
.end method

.method public DestructRender()V
    .locals 2

    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct DestructRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DestructRenderJni(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    return-void
.end method

.method public GetEncoderState()I
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowEncoderStateJni(J)I

    move-result p0

    return p0
.end method

.method public GetNowScale()D
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowScaleJni(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public GetNowState()I
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowStateJni(J)I

    move-result p0

    return p0
.end method

.method public InitRender(IIII)V
    .locals 8

    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct InitRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->InitRenderJni(JIIII)V

    return-void
.end method

.method public PauseRunning()V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->PausePipelineJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    return-void
.end method

.method public PushExtraYAndUVFrame(Landroid/media/Image;)V
    .locals 12

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    iget-boolean v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    const-wide/32 v9, 0xf4240

    div-long v9, v0, v9

    iget v11, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    invoke-static/range {v3 .. v11}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIJI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    :cond_0
    return-void
.end method

.method public RecoverRunning()V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RecoverPipelineJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    return-void
.end method

.method public RenderFrame()V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RenderFrameJni(J)V

    return-void
.end method

.method public SetEncodeType(I)Z
    .locals 4

    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget-object v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 p0, 0x1

    return p0
.end method

.method public SetFilmSizeState(I)Z
    .locals 4

    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget-object v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 p0, 0x1

    return p0
.end method

.method public SetRotation(I)Z
    .locals 11

    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    invoke-direct {p0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RefreshReferenceBox()V

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    iget-wide v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v5, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v7, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v9, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    invoke-static/range {v0 .. v10}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOrientationJni(JIDDDD)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 p0, 0x1

    return p0
.end method

.method public SetSavePath(Ljava/lang/String;)Z
    .locals 4

    iput-object p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    iget v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 p0, 0x1

    return p0
.end method

.method public StartRecording()V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ResetDollyZoomStateJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    sget-object p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v0, "StartRecording"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public StopRecording()V
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DoSomethingAtStopJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    sget-object p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v0, "StopRecording"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
