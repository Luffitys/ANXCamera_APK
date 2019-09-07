.class Lorg/webrtc/videocodec/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;,
        Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;,
        Lorg/webrtc/videocodec/MediaCodecVideoEncoder$CodecName;
    }
.end annotation


# static fields
.field public static final DEBUG:Ljava/lang/Boolean;

.field public static final ENCODE:I = 0x0

.field public static final EXIT:I = 0x2

.field public static final PUSHBUFFER:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static encodeStarted:I


# instance fields
.field private availableInputBufferIndices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private availableOutputBufferIndices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private availableOutputBufferInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bitRate:I

.field private codec:Landroid/media/MediaCodec;

.field private codecInputBuffers:[Ljava/nio/ByteBuffer;

.field private codecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private codecheight:I

.field private codecwidth:I

.field private context:Landroid/content/Context;

.field private deltaTimeUs:J

.field private encodehandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

.field private encodelooperThread:Ljava/lang/Thread;

.field private format:Landroid/media/MediaFormat;

.field private fps:I

.field frameCount:I

.field frameNum:J

.field private frameQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private native_context:J

.field private pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

.field private pushlooperThread:Ljava/lang/Thread;

.field private surfaceView:Landroid/view/SurfaceView;

.field private timeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodeStarted:I

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 p1, 0x0

    iput p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameNum:J

    const-string v0, "HW-Encoder"

    sput-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    iput-wide p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->native_context:J

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->timeMap:Ljava/util/Map;

    sput p1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodeStarted:I

    return-void
.end method

.method private PushPendingBuffers()V
    .locals 4

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->feedInputBuffer()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic access$000(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->timeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Landroid/media/MediaCodec;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodePendingBuffers()V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodehandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    return-object p0
.end method

.method static synthetic access$402(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;)Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodehandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    return-object p1
.end method

.method static synthetic access$500(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->PushPendingBuffers()V

    return-void
.end method

.method static synthetic access$600(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    return-object p0
.end method

.method static synthetic access$602(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;)Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    return-object p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private check(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "WEBRTC-CHECK"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "WebRTC Error"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    new-instance v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$1;

    invoke-direct {v0, p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$1;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)V

    const-string p0, "OK"

    invoke-virtual {p1, p2, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private dequeueFrame()Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;
    .locals 2

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private drainOutputBuffer()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v12

    :cond_0
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {p0 .. p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->logInfoEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drainOutputBuffer--enter-- got one frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "info.presentationTimeUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "info.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const-string v1, "Saw output end of stream."

    invoke-direct {v0, v12, v1}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->check(ZLjava/lang/String;)V

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Saw output end of stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_2
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Got config bytes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v15, 0x1

    and-int/2addr v1, v15

    if-eqz v1, :cond_4

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Got Sync Frame"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v15

    goto :goto_1

    :cond_4
    move v11, v12

    :goto_1
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->timeMap:Ljava/util/Map;

    iget-wide v2, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-nez v10, :cond_7

    sget-object v3, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drainOutputBuffer timestap error from decoder -index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "info.presentationTimeUs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->native_context:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    new-instance v15, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v1, v13

    iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, -0x1

    iget v9, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecwidth:I

    iget v10, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecheight:I

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;IJJIII)V

    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->native_context:J

    invoke-virtual {v0, v15, v1, v2}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->SendFrame(Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;J)V

    :cond_5
    iget-object v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v3

    :try_start_1
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {v0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_6

    monitor-exit v3

    return v12

    :cond_6
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v13, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    return v12

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->logInfoEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drainOutputBuffer before SendFrame:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "info.presentationTimeUs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "frametype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-wide v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->native_context:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    new-instance v9, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v1, v13

    iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v2, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecwidth:I

    iget v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecheight:I

    move/from16 v16, v1

    move-object v1, v9

    move/from16 v17, v2

    move-object/from16 v2, p0

    move-object v15, v9

    move/from16 v9, v17

    move-object v12, v10

    move/from16 v10, v16

    move/from16 v16, v11

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;IJJIII)V

    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->native_context:J

    invoke-virtual {v0, v15, v1, v2}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->SendFrame(Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;J)V

    goto :goto_2

    :cond_9
    move-object v12, v10

    move/from16 v16, v11

    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->logInfoEnable()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drainOutputBuffer after SendFrame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "info.presentationTimeUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "frametype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v16

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->timeMap:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v1

    :try_start_3
    iget-object v2, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {v0, v2}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v2

    if-nez v2, :cond_b

    monitor-exit v1

    const/4 v2, 0x0

    return v2

    :cond_b
    const/4 v2, 0x0

    iget-object v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v13, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private encodePendingBuffers()V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->logInfoEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dequeueOutputBuffer :index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ltz v2, :cond_2

    iget-object v3, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, -0x3

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output Buffer changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, -0x2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    sget-object v2, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media Format Changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    if-ne v2, v1, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->drainOutputBuffer()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private feedInputBuffer()Z
    .locals 12

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->hasFrame()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3

    :cond_1
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->dequeueFrame()Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;

    move-result-object v0

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    const/4 v11, 0x1

    if-lt v4, v6, :cond_2

    move v4, v11

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    const-string v6, "Buffer is too small to copy a frame."

    invoke-direct {p0, v4, v6}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_2
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->logInfoEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feedInputBuffer -index:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "frame.timestampUs:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->timestampUs:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v2
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v4, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v4}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v4

    if-nez v4, :cond_4

    monitor-exit v2

    return v3

    :cond_4
    iget-object v4, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    iget-wide v8, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->timestampUs:J

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CryptoException w/ errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->check(ZLjava/lang/String;)V

    :goto_3
    return v11
.end method

.method private flush()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->timeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method private hasFrame()Z
    .locals 3

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    sget-object p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "frameQueue.wait exception"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_0
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static isPlatformSupported()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MiTV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "isPlatformSupported MiTV2 model"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "isPlatformSupported KK SDK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private logInfoEnable()Z
    .locals 8

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameNum:J

    const-wide/16 v4, 0x3c

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x32

    rem-long/2addr v2, v6

    cmp-long p0, v4, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private mediaTimeToSystemTime(J)J
    .locals 4

    iget-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->deltaTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->deltaTimeUs:J

    :cond_0
    iget-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->deltaTimeUs:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private pushBuffer([BIJJIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    :try_start_0
    iget-object v12, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v2, p7, p8

    mul-int/lit8 v2, v2, 0x3

    :try_start_1
    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->logInfoEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pushBuffer timestampUs:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ntp_timestapUs:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "frameCount:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    :goto_0
    iget v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    iget v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "pushBuffer drop one frame in frameQueue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    iget-object v13, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    new-instance v14, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;

    move-object v1, v14

    move-object v2, p0

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;IJJIII)V

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameNum:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameNum:J

    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameNum:J

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameNum:J

    :cond_2
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    sget v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodeStarted:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodehandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    iget-object v2, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodehandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodeStarted:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodeStarted:I

    :cond_3
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushBuffer sleep, frameCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->frameCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private requestKeyFrame()V
    .locals 3

    invoke-static {}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->isPlatformSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Sync frame request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "request-sync"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method private setCodecState(IILorg/webrtc/videocodec/MediaCodecVideoEncoder$CodecName;II)Z
    .locals 3

    iput p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecwidth:I

    iput p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecheight:I

    iput p5, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->bitRate:I

    iput p4, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->fps:I

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const-string v0, "height"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Init---framerate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bitrate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setCodecState"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    sget-object p2, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$4;->$SwitchMap$org$webrtc$videocodec$MediaCodecVideoEncoder$CodecName:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-eq p2, p3, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    return p1

    :cond_0
    iget-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "video/avc"

    invoke-virtual {p2, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "video/avc"

    invoke-static {p2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    mul-int/lit16 p5, p5, 0x3e8

    const-string p2, "bitrate"

    invoke-virtual {p1, p2, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const-string p2, "frame-rate"

    invoke-virtual {p1, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const/16 p2, 0x13

    const-string p4, "color-format"

    invoke-virtual {p1, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->isPlatformSupported()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const-string p2, "i-frame-interval"

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const/16 p2, 0x1c2

    const-string p3, "i-frame-interval"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_0
    iget-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    monitor-enter p2

    :try_start_1
    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    iget-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->format:Landroid/media/MediaFormat;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecInputBuffers:[Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    monitor-exit p2

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    instance-of p2, p0, Ljava/io/IOException;

    if-eqz p2, :cond_3

    sget-object p2, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string p3, "Failed to create MediaCodec for VP8."

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private setRates(II)Z
    .locals 3

    invoke-static {}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->isPlatformSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->bitRate:I

    if-eq p1, v0, :cond_2

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->bitRate:I

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v2, "no need to set bitRate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->fps:I

    if-eq p2, v0, :cond_5

    if-lez p2, :cond_5

    const/16 v0, 0x1e

    if-le p2, v0, :cond_4

    goto :goto_2

    :cond_4
    iput p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->fps:I

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p2, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v0, "no need to set fps"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "video-bitrate"

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string p2, "setRates failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private start(IIII)Z
    .locals 7

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->deltaTimeUs:J

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object v4, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$CodecName;->HWH264:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$CodecName;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->setCodecState(IILorg/webrtc/videocodec/MediaCodecVideoEncoder$CodecName;II)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->startPushLooperThread()V

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->startEncodeLooperThread()V

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoEncoder$EncodeHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p1
.end method

.method private startEncodeLooperThread()V
    .locals 1

    new-instance v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;

    invoke-direct {v0, p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$3;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)V

    iput-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodelooperThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodelooperThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startPushLooperThread()V
    .locals 1

    new-instance v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$2;

    invoke-direct {v0, p0}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$2;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)V

    iput-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->pushlooperThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->pushlooperThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private validCodec(Landroid/media/MediaCodec;)Z
    .locals 0

    if-nez p1, :cond_1

    sget-object p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string p1, "validCodec codec is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public native ChangeResolution(IIJ)V
.end method

.method public native SendFrame(Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;J)V
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->codec:Landroid/media/MediaCodec;

    :cond_1
    const/4 v1, 0x0

    sput v1, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->encodeStarted:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->native_context:J

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->timeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public getView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method
