.class Lorg/webrtc/hwvideocodec/H264Decoder$DecoderProperties;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/hwvideocodec/H264Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecoderProperties"
.end annotation


# instance fields
.field public final codecName:Ljava/lang/String;

.field public final colorFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/hwvideocodec/H264Decoder$DecoderProperties;->codecName:Ljava/lang/String;

    iput p2, p0, Lorg/webrtc/hwvideocodec/H264Decoder$DecoderProperties;->colorFormat:I

    return-void
.end method
