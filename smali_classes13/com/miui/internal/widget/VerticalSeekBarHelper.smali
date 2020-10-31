.class public Lcom/miui/internal/widget/VerticalSeekBarHelper;
.super Ljava/lang/Object;
.source "VerticalSeekBarHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTop(FIII)I
    .registers 6

    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    add-int/2addr v0, p2

    sub-int/2addr v0, p3

    sub-int v1, p2, p3

    if-ge v0, v1, :cond_b

    sub-int v0, p2, p3

    :cond_b
    sub-int v1, p2, p3

    add-int/2addr v1, p1

    if-le v0, v1, :cond_14

    sub-int v1, p2, p3

    add-int v0, v1, p1

    :cond_14
    return v0
.end method
