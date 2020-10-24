.class final Lokhttp3/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/internal/http2/PushObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILokio/BufferedSource;IZ)Z
    .locals 0

    int-to-long p0, p3

    invoke-interface {p2, p0, p1}, Lokio/BufferedSource;->skip(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onReset(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    return-void
.end method
