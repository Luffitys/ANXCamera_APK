.class Lmiui/net/http/HttpSession$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingInputStream"
.end annotation


# instance fields
.field private mContentLength:J

.field private mPercentage:J

.field private mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

.field private mRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    iput-object p5, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    iput-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    if-eqz p4, :cond_41

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    const-string v0, "bytes\\s+(\\d+)-(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_41

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    :cond_41
    return-void
.end method

.method private reportProgress(I)V
    .registers 10

    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_27

    iget-object v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    if-eqz v2, :cond_27

    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const/16 v0, 0x400

    if-le p1, v0, :cond_27

    :cond_1c
    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    iget-object v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    iget-wide v4, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    iget-wide v6, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    invoke-interface {v0, v4, v5, v6, v7}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    :cond_27
    return-void
.end method


# virtual methods
.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-lez v0, :cond_11

    iget-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/net/http/HttpSession$CountingInputStream;->reportProgress(I)V

    :cond_11
    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lmiui/net/http/HttpSession$CountingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_f

    iget-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    invoke-direct {p0, v0}, Lmiui/net/http/HttpSession$CountingInputStream;->reportProgress(I)V

    :cond_f
    return v0
.end method
