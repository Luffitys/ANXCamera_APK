.class Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/videocodec/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Frame"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public buflen:I

.field public frameType:I

.field public height:I

.field public ntp_timestapUs:J

.field final synthetic this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;

.field public timestampUs:J

.field public width:I


# direct methods
.method constructor <init>(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;IJJIII)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->this$0:Lorg/webrtc/videocodec/MediaCodecVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->buffer:Ljava/nio/ByteBuffer;

    iput p3, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->buflen:I

    iput-wide p4, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->timestampUs:J

    iput-wide p6, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->ntp_timestapUs:J

    iput p8, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->width:I

    iput p9, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->height:I

    iput p10, p0, Lorg/webrtc/videocodec/MediaCodecVideoEncoder$Frame;->frameType:I

    invoke-static {p1}, Lorg/webrtc/videocodec/MediaCodecVideoEncoder;->access$000(Lorg/webrtc/videocodec/MediaCodecVideoEncoder;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
