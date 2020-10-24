.class Lmiui/net/http/HttpRequestParams$FileWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public contentLength:J

.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    iput-wide p2, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentLength:J

    if-nez p4, :cond_0

    const-string p4, "nofilename"

    :cond_0
    iput-object p4, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->fileName:Ljava/lang/String;

    iput-object p5, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentType:Ljava/lang/String;

    return-void
.end method
