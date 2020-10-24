.class Lmiui/net/http/DefaultHttpResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/net/http/HttpResponse;


# instance fields
.field private mContent:Ljava/io/InputStream;

.field private mContentEncoding:Ljava/lang/String;

.field private mContentLength:J

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/net/http/DefaultHttpResponse;->mStatusCode:I

    iput-object p3, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    iput-wide p4, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    iput-object p6, p0, Lmiui/net/http/DefaultHttpResponse;->mContentType:Ljava/lang/String;

    iput-object p7, p0, Lmiui/net/http/DefaultHttpResponse;->mContentEncoding:Ljava/lang/String;

    iput-object p2, p0, Lmiui/net/http/DefaultHttpResponse;->mHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/DefaultHttpResponse;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lmiui/net/http/DefaultHttpResponse;->mStatusCode:I

    return p0
.end method

.method public release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    return-void
.end method

.method public setContent(Ljava/io/InputStream;J)V
    .locals 0

    iput-object p1, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    iput-wide p2, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    return-void
.end method
