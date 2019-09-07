.class public Lorg/jcodec/containers/mp4/boxes/DataRefBox;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "DataRefBox.java"


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createDataRefBox()Lorg/jcodec/containers/mp4/boxes/DataRefBox;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/DataRefBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/DataRefBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/DataRefBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "dref"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->doWrite(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public estimateSize()I
    .locals 0

    invoke-super {p0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->estimateSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->parse(Ljava/nio/ByteBuffer;)V

    return-void
.end method
