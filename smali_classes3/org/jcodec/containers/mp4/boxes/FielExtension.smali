.class public Lorg/jcodec/containers/mp4/boxes/FielExtension;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "FielExtension.java"


# instance fields
.field private order:I

.field private type:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "fiel"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/FielExtension;->type:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/FielExtension;->order:I

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getOrderInterpretation()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/FielExtension;->isInterlaced()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/FielExtension;->order:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "topbottom"

    return-object p0

    :cond_1
    const-string p0, "bottomtop"

    return-object p0

    :cond_2
    const-string p0, "bottom"

    return-object p0

    :cond_3
    const-string p0, "top"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public isInterlaced()Z
    .locals 1

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/FielExtension;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/FielExtension;->type:I

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/FielExtension;->isInterlaced()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/FielExtension;->order:I

    :cond_0
    return-void
.end method

.method public topFieldFirst()Z
    .locals 2

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/FielExtension;->order:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
