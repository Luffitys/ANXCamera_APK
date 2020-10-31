.class Landroid/media/AudioMetadata$3$3;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$DataPackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$DataPackage<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioMetadata$3;


# direct methods
.method constructor <init>(Landroid/media/AudioMetadata$3;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioMetadata$3$3;->this$0:Landroid/media/AudioMetadata$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Float;)Z
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->putFloat(F)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioMetadata$3$3;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Float;)Z

    move-result p1

    return p1
.end method

.method public unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Float;
    .registers 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/AudioMetadata$3$3;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
