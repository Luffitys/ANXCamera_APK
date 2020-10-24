.class Lmiui/net/http/HttpSession$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private mContentLength:J

.field private mPercentage:J

.field private mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

.field private mRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    iput-object p5, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    iput-wide p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "bytes\\s+(\\d+)-(\\d+)/(\\d+)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    iput-wide p4, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    :cond_0
    return-void
.end method

.method private reportProgress(I)V
    .locals 6

    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x400

    if-le p1, v0, :cond_1

    :cond_0
    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    iget-object p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    iget-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    invoke-interface {p1, v0, v1, v2, v3}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/net/http/HttpSession$CountingInputStream;->reportProgress(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lmiui/net/http/HttpSession$CountingInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    iget-wide p2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    invoke-direct {p0, p1}, Lmiui/net/http/HttpSession$CountingInputStream;->reportProgress(I)V

    :cond_0
    return p1
.end method
