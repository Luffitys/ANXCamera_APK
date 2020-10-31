.class Lmiui/net/http/HttpRequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentLength:J

.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    iput-wide p2, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentLength:J

    if-nez p4, :cond_c

    const-string v0, "nofilename"

    goto :goto_d

    :cond_c
    move-object v0, p4

    :goto_d
    iput-object v0, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->fileName:Ljava/lang/String;

    iput-object p5, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentType:Ljava/lang/String;

    return-void
.end method
