.class Lorg/jcodec/containers/mp4/boxes/KeysBox$LocalBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source ""


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    iget-object p0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->fourcc()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
