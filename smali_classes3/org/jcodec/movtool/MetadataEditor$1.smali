.class Lorg/jcodec/movtool/MetadataEditor$1;
.super Ljava/lang/Object;
.source "MetadataEditor.java"

# interfaces
.implements Lorg/jcodec/movtool/MP4Edit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jcodec/movtool/MetadataEditor;->save(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jcodec/movtool/MetadataEditor;

.field final synthetic val$self:Lorg/jcodec/movtool/MetadataEditor;


# direct methods
.method constructor <init>(Lorg/jcodec/movtool/MetadataEditor;Lorg/jcodec/movtool/MetadataEditor;)V
    .locals 0

    iput-object p1, p0, Lorg/jcodec/movtool/MetadataEditor$1;->this$0:Lorg/jcodec/movtool/MetadataEditor;

    iput-object p2, p0, Lorg/jcodec/movtool/MetadataEditor$1;->val$self:Lorg/jcodec/movtool/MetadataEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/jcodec/containers/mp4/boxes/MovieBox;)V
    .locals 6

    const-class v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    const-class v1, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "udta"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p1, v1, v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirstPath(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;[Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v1

    check-cast v1, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    iget-object v2, p0, Lorg/jcodec/movtool/MetadataEditor$1;->val$self:Lorg/jcodec/movtool/MetadataEditor;

    invoke-static {v2}, Lorg/jcodec/movtool/MetadataEditor;->access$000(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jcodec/movtool/MetadataEditor$1;->val$self:Lorg/jcodec/movtool/MetadataEditor;

    invoke-static {v2}, Lorg/jcodec/movtool/MetadataEditor;->access$000(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->createMetaBox()Lorg/jcodec/containers/mp4/boxes/MetaBox;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_0
    iget-object v2, p0, Lorg/jcodec/movtool/MetadataEditor$1;->val$self:Lorg/jcodec/movtool/MetadataEditor;

    invoke-static {v2}, Lorg/jcodec/movtool/MetadataEditor;->access$000(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->setKeyedMeta(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lorg/jcodec/movtool/MetadataEditor$1;->val$self:Lorg/jcodec/movtool/MetadataEditor;

    invoke-static {v0}, Lorg/jcodec/movtool/MetadataEditor;->access$100(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jcodec/movtool/MetadataEditor$1;->val$self:Lorg/jcodec/movtool/MetadataEditor;

    invoke-static {v0}, Lorg/jcodec/movtool/MetadataEditor;->access$100(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-nez v1, :cond_3

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UdtaMetaBox;->createUdtaMetaBox()Lorg/jcodec/containers/mp4/boxes/UdtaMetaBox;

    move-result-object v1

    const-class v0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    invoke-static {p1, v0, v3}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    if-nez v0, :cond_2

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    invoke-virtual {p1, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_2
    invoke-virtual {v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_3
    iget-object p0, p0, Lorg/jcodec/movtool/MetadataEditor$1;->val$self:Lorg/jcodec/movtool/MetadataEditor;

    invoke-static {p0}, Lorg/jcodec/movtool/MetadataEditor;->access$100(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->setItunesMeta(Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public applyToFragment(Lorg/jcodec/containers/mp4/boxes/MovieBox;[Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;)V
    .locals 0

    return-void
.end method
