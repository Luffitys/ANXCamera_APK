.class Lorg/webrtc/hwvideocodec/H264I420Frame;
.super Ljava/lang/Object;
.source "H264I420Frame.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H264I420Frame"


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public height:I

.field public size:I

.field public timeStamp:J

.field public width:I


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->width:I

    iput p2, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->height:I

    iput p4, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->size:I

    iput-object p3, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    iput-wide p5, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->timeStamp:J

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/webrtc/hwvideocodec/H264I420Frame;)Lorg/webrtc/hwvideocodec/H264I420Frame;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget v0, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->size:I

    iget v1, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->size:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->width:I

    iget v1, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->height:I

    iget v1, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->height:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->timeStamp:J

    iput-wide v0, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->timeStamp:J

    iget-object p1, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/webrtc/hwvideocodec/H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched dimensions!  Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", destination: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
