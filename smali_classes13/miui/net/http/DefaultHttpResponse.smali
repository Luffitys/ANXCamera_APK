.class Lmiui/net/http/DefaultHttpResponse;
.super Ljava/lang/Object;
.source "DefaultHttpResponse.java"

# interfaces
.implements Lmiui/net/http/HttpResponse;


# instance fields
.field private mContent:Ljava/io/InputStream;

.field private mContentEncoding:Ljava/lang/String;

.field private mContentLength:J

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

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
    .registers 2

    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lmiui/net/http/DefaultHttpResponse;->mStatusCode:I

    return v0
.end method

.method public release()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    return-void
.end method

.method public setContent(Ljava/io/InputStream;J)V
    .registers 4

    iput-object p1, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    iput-wide p2, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    return-void
.end method
