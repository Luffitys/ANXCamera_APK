.class Lorg/jcodec/movtool/InplaceMP4Editor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/jcodec/common/Tuple$Mapper;


# instance fields
.field final synthetic this$0:Lorg/jcodec/movtool/InplaceMP4Editor;


# direct methods
.method constructor <init>(Lorg/jcodec/movtool/InplaceMP4Editor;)V
    .locals 0

    iput-object p1, p0, Lorg/jcodec/movtool/InplaceMP4Editor$1;->this$0:Lorg/jcodec/movtool/InplaceMP4Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lorg/jcodec/containers/mp4/MP4Util$Atom;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getOffset()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    invoke-virtual {p0, p1}, Lorg/jcodec/movtool/InplaceMP4Editor$1;->map(Lorg/jcodec/containers/mp4/MP4Util$Atom;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
