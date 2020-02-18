.class Lorg/webrtc/videocodec/MediaCodecVideoDecoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;,
        Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;,
        Lorg/webrtc/videocodec/MediaCodecVideoDecoder$CodecName;
    }
.end annotation


# static fields
.field public static final DEBUG:Ljava/lang/Boolean;

.field public static final DECODE:I = 0x0

.field public static final EXIT:I = 0x2

.field public static final PUSHBUFFER:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static decodeStarted:Z


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

.field private codec:Landroid/media/MediaCodec;

.field private codecInputBuffers:[Ljava/nio/ByteBuffer;

.field private codecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private codecheight:I

.field private codecwidth:I

.field private context:Landroid/content/Context;

.field private decodehandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

.field private decodelooperThread:Ljava/lang/Thread;

.field private deltaTimeUs:J

.field private format:Landroid/media/MediaFormat;

.field frameCount:I

.field frameNum:J

.field private frameQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private native_context:J

.field private pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

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

    sput-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DEBUG:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodeStarted:Z

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameNum:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameCount:I

    const-string v0, "HW-Decoder"

    sput-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    iput-wide p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->timeMap:Ljava/util/Map;

    sput-boolean p1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodeStarted:Z

    return-void
.end method

.method private PushPendingBuffers()V
    .locals 4

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/16 v2, 0xa

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->feedInputBuffer()Z

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

.method static synthetic access$000(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->timeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Landroid/media/MediaCodec;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodePendingBuffers()V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodehandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    return-object p0
.end method

.method static synthetic access$402(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;)Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodehandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    return-object p1
.end method

.method static synthetic access$500(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->PushPendingBuffers()V

    return-void
.end method

.method static synthetic access$600(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    return-object p0
.end method

.method static synthetic access$602(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;)Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    return-object p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "WebRTC Error"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    new-instance v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$1;

    invoke-direct {v0, p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$1;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)V

    const-string p0, "OK"

    invoke-virtual {p1, p2, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private decodePendingBuffers()V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->logInfoEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodePendingBuffers DECODE. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ltz v2, :cond_2

    iget-object v3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, -0x3

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    const/4 v1, -0x2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecwidth:I

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecheight:I

    iget-wide v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecwidth:I

    iget v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecheight:I

    iget-wide v3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->ChangeResolution(IIJ)V

    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->drainOutputBuffer()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dequeueFrame()Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;
    .locals 2

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameCount:I

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;

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
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

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
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/media/MediaCodec$BufferInfo;

    iget v1, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    const-string v1, "Saw output end of stream."

    invoke-direct {v0, v12, v1}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->check(ZLjava/lang/String;)V

    return v12

    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->logInfoEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drainOutputBuffer got one frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "info.presentationTimeUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->timeMap:Ljava/util/Map;

    iget-wide v2, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-nez v15, :cond_5

    sget-object v3, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

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

    iget-wide v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_3

    new-instance v15, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v1, v13

    iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, -0x1

    iget v9, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecwidth:I

    iget v10, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecheight:I

    const/4 v11, -0x1

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Ljava/nio/ByteBuffer;IJJIII)V

    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    invoke-virtual {v0, v15, v1, v2}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DeliverFrame(Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;J)V

    :cond_3
    iget-object v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v3

    :try_start_1
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {v0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_4

    monitor-exit v3

    return v12

    :cond_4
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v13, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    return v12

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->logInfoEnable()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drainOutputBuffer before DeliverFrame:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "info.presentationTimeUs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_7

    new-instance v11, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v1, v13

    iget v4, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecwidth:I

    iget v10, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecheight:I

    const/16 v16, -0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v12, v11

    move/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Ljava/nio/ByteBuffer;IJJIII)V

    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    invoke-virtual {v0, v12, v1, v2}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DeliverFrame(Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;J)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->logInfoEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drainOutputBuffer after DeliverFrame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "info.presentationTimeUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->timeMap:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v1

    :try_start_3
    iget-object v2, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {v0, v2}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v2

    if-nez v2, :cond_9

    monitor-exit v1

    const/4 v2, 0x0

    return v2

    :cond_9
    const/4 v2, 0x0

    iget-object v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v13, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

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

.method private feedInputBuffer()Z
    .locals 12

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableInputBufferIndices:Ljava/util/LinkedList;

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
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->hasFrame()Z

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
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->dequeueFrame()Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;

    move-result-object v0

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecInputBuffers:[Ljava/nio/ByteBuffer;

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

    invoke-direct {p0, v4, v6}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_2
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->logInfoEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feedInputBuffer -index:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "frame.timestampUs:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->timestampUs:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    monitor-enter v2
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v4, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v4}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->validCodec(Landroid/media/MediaCodec;)Z

    move-result v4

    if-nez v4, :cond_4

    monitor-exit v2

    return v3

    :cond_4
    iget-object v4, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    iget-wide v8, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;->timestampUs:J

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

    invoke-direct {p0, v3, v0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->check(ZLjava/lang/String;)V

    :goto_3
    return v11
.end method

.method private flush()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableInputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->availableOutputBufferInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->timeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method private hasFrame()Z
    .locals 3

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->logInfoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    const-string v2, "hasFrame frameQueue is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    sget-object p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    const-string v2, "frameQueue.wait exception"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_1
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

.method private logInfoEnable()Z
    .locals 8

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameNum:J

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

    iget-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->deltaTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->deltaTimeUs:J

    :cond_0
    iget-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->deltaTimeUs:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;IJJIII)V
    .locals 15

    move-object v0, p0

    :try_start_0
    iget-object v12, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v13, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    new-instance v14, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Ljava/nio/ByteBuffer;IJJIII)V

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->logInfoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushBuffer timestampUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ntp_timestapUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "frameCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameNum:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameNum:J

    iget-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameNum:J

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameNum:J

    :cond_1
    iget v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameCount:I

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->frameQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    sget-boolean v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodeStarted:Z

    if-nez v1, :cond_2

    sput-boolean v2, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodeStarted:Z

    iget-object v1, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodehandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    iget-object v0, v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodehandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setCodecState(IILorg/webrtc/videocodec/MediaCodecVideoDecoder$CodecName;)Z
    .locals 5

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    iput p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecwidth:I

    iput p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecheight:I

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$4;->$SwitchMap$org$webrtc$videocodec$MediaCodecVideoDecoder$CodecName:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    const/4 v2, 0x3

    if-eq p3, v2, :cond_1

    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    return v0

    :cond_0
    const-string p3, "OMX.Exynos.VP8.Decoder"

    invoke-static {p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_1
    const-string p3, "OMX.google.vpx.decoder"

    invoke-static {p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    const-string v2, "mime"

    const-string v3, "video/x-vnd.on2.vp8"

    invoke-virtual {p3, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "video/x-vnd.on2.vp8"

    invoke-static {p3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    const-string v2, "mime"

    const-string v3, "video/avc"

    invoke-virtual {p3, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "video/avc"

    invoke-static {p3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MiTV2"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    const-string v2, "forceDecode"

    invoke-virtual {p3, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    iget-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    const/16 v2, 0x13

    const-string v3, "color-format"

    invoke-virtual {p3, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    monitor-enter p3

    :try_start_1
    iget-object v2, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->format:Landroid/media/MediaFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCodecState after codec start -width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecInputBuffers:[Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    monitor-exit p3

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_6

    sget-object p1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    const-string p2, "Failed to create MediaCodec for VP8."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private start(II)Z
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->deltaTimeUs:J

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

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
    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$CodecName;->HWH264:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$CodecName;

    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->setCodecState(IILorg/webrtc/videocodec/MediaCodecVideoDecoder$CodecName;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->startPushLooperThread()V

    invoke-direct {p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->startDecodeLooperThread()V

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->pushhandler:Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p1
.end method

.method private startDecodeLooperThread()V
    .locals 1

    new-instance v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$3;

    invoke-direct {v0, p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$3;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)V

    iput-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodelooperThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodelooperThread:Ljava/lang/Thread;

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

    new-instance v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$2;

    invoke-direct {v0, p0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$2;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)V

    iput-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->pushlooperThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->pushlooperThread:Ljava/lang/Thread;

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

    sget-object p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

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

.method public native DeliverFrame(Lorg/webrtc/videocodec/MediaCodecVideoDecoder$Frame;J)V
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->codec:Landroid/media/MediaCodec;

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->decodeStarted:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->native_context:J

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->timeMap:Ljava/util/Map;

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

    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method
