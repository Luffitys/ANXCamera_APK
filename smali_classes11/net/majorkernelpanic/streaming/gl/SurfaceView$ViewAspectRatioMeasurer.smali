.class public Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aspectRatio:D

.field private measuredHeight:Ljava/lang/Integer;

.field private measuredWidth:Ljava/lang/Integer;

.field final synthetic this$0:Lnet/majorkernelpanic/streaming/gl/SurfaceView;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->this$0:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredWidth:Ljava/lang/Integer;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredHeight:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAspectRatio()D
    .locals 2

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->aspectRatio:D

    return-wide v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredHeight:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to run measure() before trying to get measured dimensions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMeasuredWidth()I
    .locals 1

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredWidth:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to run measure() before trying to get measured dimensions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public measure(II)V
    .locals 2

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->aspectRatio:D

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measure(IID)V

    return-void
.end method

.method public measure(IID)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :goto_1
    const/high16 p2, 0x40000000    # 2.0f

    if-ne v2, p2, :cond_2

    if-ne v0, p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredWidth:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-ne v2, p2, :cond_4

    int-to-double p1, p1

    int-to-double v0, v1

    mul-double/2addr v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredWidth:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr p1, p3

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredHeight:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    if-ne v0, p2, :cond_5

    int-to-double v0, v1

    int-to-double p1, p1

    div-double/2addr p1, p3

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredHeight:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    mul-double/2addr p1, p3

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->measuredWidth:Ljava/lang/Integer;

    goto :goto_4

    :cond_5
    int-to-double v2, p1

    int-to-double v4, v1

    mul-double/2addr v4, p3

    cmpl-double p2, v2, v4

    if-lez p2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :goto_4
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceView$ViewAspectRatioMeasurer;->aspectRatio:D

    return-void
.end method
