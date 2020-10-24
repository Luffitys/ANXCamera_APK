.class Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->delay:I

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
