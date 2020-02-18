.class Lorg/webrtc/videocodec/MediaCodecVideoDecoder$3;
.super Ljava/lang/Thread;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->startDecodeLooperThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videocodec/MediaCodecVideoDecoder;


# direct methods
.method constructor <init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoDecoder;

    new-instance v1, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    invoke-direct {v1, v0}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;-><init>(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;)V

    invoke-static {v0, v1}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->access$402(Lorg/webrtc/videocodec/MediaCodecVideoDecoder;Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;)Lorg/webrtc/videocodec/MediaCodecVideoDecoder$DecodeHandler;

    sget-object v0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/webrtc/videocodec/MediaCodecVideoDecoder;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startDecodeLooperThread Decoder-HW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoDecoder;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/videocodec/MediaCodecVideoDecoder$3;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoDecoder;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
