.class public Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;
.super Ljava/lang/Object;
.source "SimpleBoxFactory.java"

# interfaces
.implements Lorg/jcodec/containers/mp4/IBoxFactory;


# instance fields
.field private boxes:Lorg/jcodec/containers/mp4/Boxes;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/Boxes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;->boxes:Lorg/jcodec/containers/mp4/Boxes;

    return-void
.end method


# virtual methods
.method public newBox(Lorg/jcodec/containers/mp4/boxes/Header;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 2

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/SimpleBoxFactory;->boxes:Lorg/jcodec/containers/mp4/Boxes;

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jcodec/containers/mp4/Boxes;->toClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/jcodec/platform/Platform;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/Box;

    return-object p0
.end method
