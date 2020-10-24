.class Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;
.super Ljava/io/InputStream;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "RtcpDeinterleaver"


# instance fields
.field private mBuffer:[B

.field private mIOException:Ljava/io/IOException;

.field private mInputStream:Ljava/io/InputStream;

.field private mPipedInputStream:Ljava/io/PipedInputStream;

.field private mPipedOutputStream:Ljava/io/PipedOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mInputStream:Ljava/io/InputStream;

    new-instance p1, Ljava/io/PipedInputStream;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Ljava/io/PipedInputStream;-><init>(I)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedInputStream:Ljava/io/PipedInputStream;

    :try_start_0
    new-instance p1, Ljava/io/PipedOutputStream;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedInputStream:Ljava/io/PipedInputStream;

    invoke-direct {p1, v0}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedOutputStream:Ljava/io/PipedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mBuffer:[B

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mIOException:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I

    move-result p0

    return p0

    :cond_0
    throw v0
.end method

.method public read([B)I
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mIOException:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->read([B)I

    move-result p0

    return p0

    :cond_0
    throw v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mIOException:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PipedInputStream;->read([BII)I

    move-result p0

    return p0

    :cond_0
    throw v0
.end method

.method public run()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mBuffer:[B

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedOutputStream:Ljava/io/PipedOutputStream;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/PipedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mPipedInputStream:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/io/PipedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtcpDeinterleaver;->mIOException:Ljava/io/IOException;

    :goto_1
    return-void
.end method
