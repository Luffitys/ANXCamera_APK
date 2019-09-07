.class Lorg/webrtc/hwvideocodec/H264Decoder$1;
.super Ljava/lang/Thread;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/hwvideocodec/H264Decoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/hwvideocodec/H264Decoder;


# direct methods
.method constructor <init>(Lorg/webrtc/hwvideocodec/H264Decoder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/hwvideocodec/H264Decoder$1;->this$0:Lorg/webrtc/hwvideocodec/H264Decoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/webrtc/hwvideocodec/H264Decoder$1;->this$0:Lorg/webrtc/hwvideocodec/H264Decoder;

    invoke-static {v0}, Lorg/webrtc/hwvideocodec/H264Decoder;->access$000(Lorg/webrtc/hwvideocodec/H264Decoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/hwvideocodec/H264Decoder$1;->this$0:Lorg/webrtc/hwvideocodec/H264Decoder;

    invoke-virtual {v0}, Lorg/webrtc/hwvideocodec/H264Decoder;->deliverDecodedFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method
