.class Landroid/graphics/improve/MMImproveHook$MMDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "MMImproveHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/MMImproveHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMDrawable"
.end annotation


# instance fields
.field private final mNewMatrix:Landroid/graphics/Matrix;

.field private mNewRect:Landroid/graphics/RectF;

.field private mOldRect:Landroid/graphics/RectF;

.field private final mTemp:Landroid/graphics/RectF;

.field final synthetic this$0:Landroid/graphics/improve/MMImproveHook;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/MMImproveHook;Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/content/res/Resources;)V
    .registers 8

    iput-object p1, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->this$0:Landroid/graphics/improve/MMImproveHook;

    iget-object v0, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mOldRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mNewRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mNewMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mTemp:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mNewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mTemp:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mOldRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mNewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mNewRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mTemp:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Landroid/graphics/improve/MMImproveHook$MMDrawable;->mNewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
