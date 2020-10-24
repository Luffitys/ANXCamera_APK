.class public Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "MediaEffectCamera"


# instance fields
.field private mMediaFilterCamera:J

.field mMediaFilterCameraNotify:Lcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct MediaEffectCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCameraNotify:Lcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;

    return-void
.end method

.method private static native CancelRecordingJni(J)V
.end method

.method private static native ConstructMediaEffectCameraJni(Ljavax/microedition/khronos/egl/EGLContext;IIIILcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;)J
.end method

.method private static native DestructMediaEffectCameraJni(J)V
.end method

.method private static native EnableFilmPictureJni(JZ)V
.end method

.method private static native GetRecordingStatusJni(J)I
.end method

.method private static native NeedProcessTextureJni(JJII)V
.end method

.method private static native PauseRecordingJni(J)V
.end method

.method private static native PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIJ)V
.end method

.method private static native ResumeRecordingJni(J)V
.end method

.method private static native SetEncoderTypeJni(Ljava/lang/String;)Z
.end method

.method private static native SetOrientationJni(JI)V
.end method

.method private static native StartRecordingJni(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V
.end method

.method private static native StopRecordingJni(J)V
.end method

.method public static Version()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->VersionJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native VersionJni()Ljava/lang/String;
.end method


# virtual methods
.method public CancelRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->CancelRecordingJni(J)V

    return-void
.end method

.method public ConstructMediaEffectCamera(IIIILcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;)V
    .locals 6

    iput-object p5, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCameraNotify:Lcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;

    const/4 v0, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->ConstructMediaEffectCameraJni(Ljavax/microedition/khronos/egl/EGLContext;IIIILcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    sget-object p1, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "construct MediaFilterCamera: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public DestructMediaEffectCamera()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destruct MediaEffectCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->DestructMediaEffectCameraJni(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCameraNotify:Lcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;

    return-void
.end method

.method public EnableFilmPicture(Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablefilmpicture MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->EnableFilmPictureJni(JZ)V

    return-void
.end method

.method public GetRecordingStatus()Lcom/xiaomi/inceptionmediaprocess/RecordingStatus;
    .locals 2

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "GetRecordingStatus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->GetRecordingStatusJni(J)I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/inceptionmediaprocess/RecordingStatus;->int2enum(I)Lcom/xiaomi/inceptionmediaprocess/RecordingStatus;

    move-result-object p0

    return-object p0
.end method

.method public NeedProcessTexture(JII)V
    .locals 8

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NeedProcessTexture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->NeedProcessTextureJni(JJII)V

    return-void
.end method

.method public PauseRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->PauseRecordingJni(J)V

    return-void
.end method

.method public PushExtraYAndUVFrame(Landroid/media/Image;)V
    .locals 11

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushExtraYUVFrame MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    iget-wide v3, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    aget-object p0, v0, v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 p0, 0x2

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    div-long v9, p0, v0

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIJ)V

    return-void
.end method

.method public ResumeRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->ResumeRecordingJni(J)V

    return-void
.end method

.method public SetEncoderType(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetEncoderType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->SetEncoderTypeJni(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public SetOrientation(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetOrientation MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->SetOrientationJni(JI)V

    return-void
.end method

.method public StartRecording(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JF)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start MediaFilterCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    const-wide/16 v14, 0x3a98

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-wide/from16 v11, p6

    move/from16 v13, p8

    invoke-static/range {v4 .. v15}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StartRecordingJni(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V

    return-void
.end method

.method public StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start MediaFilterCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const-wide/16 v14, 0x2710

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v15}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StartRecordingJni(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V

    return-void
.end method

.method public StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start MediaFilterCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "record_video_max_duration:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p8

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move/from16 v13, p7

    invoke-static/range {v4 .. v15}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StartRecordingJni(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V

    return-void
.end method

.method public StopRecording()V
    .locals 4

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop MediaFilterCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->mMediaFilterCamera:J

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StopRecordingJni(J)V

    return-void
.end method
