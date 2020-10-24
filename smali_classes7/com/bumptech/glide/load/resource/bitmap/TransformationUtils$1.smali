.class final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;


# instance fields
.field final synthetic val$roundingRadius:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$1;->val$roundingRadius:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundedCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 1

    iget p0, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$1;->val$roundingRadius:I

    int-to-float v0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
