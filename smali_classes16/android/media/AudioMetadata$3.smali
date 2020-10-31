.class Landroid/media/AudioMetadata$3;
.super Ljava/util/HashMap;
.source "AudioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Landroid/media/AudioMetadata$DataPackage<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/media/AudioMetadata$3$1;

    invoke-direct {v1, p0}, Landroid/media/AudioMetadata$3$1;-><init>(Landroid/media/AudioMetadata$3;)V

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioMetadata$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/media/AudioMetadata$3$2;

    invoke-direct {v1, p0}, Landroid/media/AudioMetadata$3$2;-><init>(Landroid/media/AudioMetadata$3;)V

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioMetadata$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/media/AudioMetadata$3$3;

    invoke-direct {v1, p0}, Landroid/media/AudioMetadata$3$3;-><init>(Landroid/media/AudioMetadata$3;)V

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioMetadata$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/media/AudioMetadata$3$4;

    invoke-direct {v1, p0}, Landroid/media/AudioMetadata$3$4;-><init>(Landroid/media/AudioMetadata$3;)V

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioMetadata$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/media/AudioMetadata$3$5;

    invoke-direct {v1, p0}, Landroid/media/AudioMetadata$3$5;-><init>(Landroid/media/AudioMetadata$3;)V

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioMetadata$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/media/AudioMetadata$BaseMapPackage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/AudioMetadata$BaseMapPackage;-><init>(Landroid/media/AudioMetadata$1;)V

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioMetadata$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
