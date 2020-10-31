.class Lcom/miui/internal/yellowpage/ImageLoader$1;
.super Landroid/util/LruCache;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lmiui/yellowpage/YellowPageImgLoader$Image;",
        "Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/yellowpage/ImageLoader;


# direct methods
.method constructor <init>(Lcom/miui/internal/yellowpage/ImageLoader;I)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/yellowpage/ImageLoader$1;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lmiui/yellowpage/YellowPageImgLoader$Image;

    check-cast p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader$1;->sizeOf(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;)I
    .registers 4

    if-eqz p2, :cond_e

    iget-object v0, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    iget-object v0, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
