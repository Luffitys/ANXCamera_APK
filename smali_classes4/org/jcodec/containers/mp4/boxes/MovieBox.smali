.class public Lorg/jcodec/containers/mp4/boxes/MovieBox;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "MovieBox.java"


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMovieBox()Lorg/jcodec/containers/mp4/boxes/MovieBox;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MovieBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MovieBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "moov"

    return-object v0
.end method

.method private getMovieHeader()Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;

    const-string v1, "mvhd"

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;

    return-object p0
.end method


# virtual methods
.method public getTimescale()I
    .locals 0

    invoke-direct {p0}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->getMovieHeader()Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->getTimescale()I

    move-result p0

    return p0
.end method

.method public getTracks()[Lorg/jcodec/containers/mp4/boxes/TrakBox;
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/TrakBox;

    const-string v1, "trak"

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findAll(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, [Lorg/jcodec/containers/mp4/boxes/TrakBox;

    return-object p0
.end method

.method public isPureRefMovie()Z
    .locals 3

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->getTracks()[Lorg/jcodec/containers/mp4/boxes/TrakBox;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/TrakBox;->isPureRef()Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public rescale(JJ)J
    .locals 2

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->getTimescale()I

    move-result p0

    int-to-long v0, p0

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    return-wide p1
.end method
