.class Lmiui/maml/ResourceManager$1;
.super Landroid/util/LruCache;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lmiui/maml/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/ResourceManager$1;->sizeOf(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)I
    .registers 4

    if-eqz p2, :cond_e

    iget-object v0, p2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    iget-object v0, p2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method
