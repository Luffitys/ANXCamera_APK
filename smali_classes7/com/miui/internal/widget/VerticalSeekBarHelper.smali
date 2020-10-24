.class public Lcom/miui/internal/widget/VerticalSeekBarHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTop(FIII)I
    .locals 1

    int-to-float v0, p1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    add-int/2addr p0, p2

    sub-int/2addr p0, p3

    sub-int/2addr p2, p3

    if-ge p0, p2, :cond_0

    move p0, p2

    :cond_0
    add-int/2addr p2, p1

    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    return p0
.end method
