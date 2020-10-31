.class public Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinearGradientUtil"
.end annotation


# instance fields
.field private mEndColor:I

.field private mStartColor:I

.field final synthetic this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

.field private v:F


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V
    .registers 4

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    iput p3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    return-void
.end method


# virtual methods
.method public getColor(F)I
    .registers 16

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    iget v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iput p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->v:F

    int-to-double v6, v0

    sub-int v8, v3, v0

    int-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v7, v2

    sub-int v9, v5, v2

    int-to-float v9, v9

    mul-float/2addr v9, p1

    float-to-double v12, v9

    add-double/2addr v12, v10

    add-double/2addr v7, v12

    double-to-int v7, v7

    int-to-double v8, v1

    sub-int v12, v4, v1

    int-to-float v12, v12

    mul-float/2addr v12, p1

    float-to-double v12, v12

    add-double/2addr v12, v10

    add-double/2addr v8, v12

    double-to-int v8, v8

    const/16 v9, 0xff

    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    return v9
.end method

.method public getEndColor()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    return v0
.end method

.method public getStartColor()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    return v0
.end method

.method public getV()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->v:F

    return v0
.end method

.method public setEndColor(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    return-void
.end method

.method public setStartColor(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    return-void
.end method
