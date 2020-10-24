.class public Lorg/jcodec/containers/mp4/DataBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lorg/jcodec/containers/mp4/boxes/AliasBox;

    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UrlBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/jcodec/containers/mp4/boxes/UrlBox;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/AliasBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v1, "cios"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
