.class Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final STATUS_BAD_REQUEST:Ljava/lang/String; = "400 Bad Request"

.field public static final STATUS_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "500 Internal Server Error"

.field public static final STATUS_NOT_FOUND:Ljava/lang/String; = "404 Not Found"

.field public static final STATUS_OK:Ljava/lang/String; = "200 OK"

.field public static final STATUS_UNAUTHORIZED:Ljava/lang/String; = "401 Unauthorized"


# instance fields
.field public attributes:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field private final mRequest:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "500 Internal Server Error"

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->content:Ljava/lang/String;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->mRequest:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;

    return-void
.end method

.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "500 Internal Server Error"

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->content:Ljava/lang/String;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->mRequest:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;

    return-void
.end method


# virtual methods
.method public send(Ljava/io/OutputStream;)V
    .locals 7

    const-string v0, "RtspServer"

    const-string v1, ""

    :try_start_0
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->mRequest:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;

    iget-object v2, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->headers:Ljava/util/HashMap;

    const-string v3, "cseq"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing CSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RTSP/1.0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\nServer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->SERVER_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cseq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Content-Length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->content:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\r"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
