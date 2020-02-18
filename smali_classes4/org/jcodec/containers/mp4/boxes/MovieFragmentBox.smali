.class public Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "MovieFragmentBox.java"


# instance fields
.field private moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMovieFragmentBox()Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "moof"

    return-object v0
.end method


# virtual methods
.method public getMovie()Lorg/jcodec/containers/mp4/boxes/MovieBox;
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;->moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;

    return-object p0
.end method

.method public getSequenceNumber()I
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->getSequenceNumber()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Corrupt movie fragment, no header atom found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTracks()[Lorg/jcodec/containers/mp4/boxes/TrackFragmentBox;
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findAll(Lorg/jcodec/containers/mp4/boxes/Box;Ljava/lang/Class;Ljava/lang/String;)[Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, [Lorg/jcodec/containers/mp4/boxes/TrackFragmentBox;

    return-object p0
.end method

.method public setMovie(Lorg/jcodec/containers/mp4/boxes/MovieBox;)V
    .locals 0

    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;->moov:Lorg/jcodec/containers/mp4/boxes/MovieBox;

    return-void
.end method
