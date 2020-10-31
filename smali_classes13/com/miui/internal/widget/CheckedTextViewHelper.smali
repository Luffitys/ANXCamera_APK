.class public Lcom/miui/internal/widget/CheckedTextViewHelper;
.super Ljava/lang/Object;
.source "CheckedTextViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckMarkPositionY(IIII)I
    .registers 5

    sub-int v0, p0, p2

    sub-int/2addr v0, p3

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    return v0
.end method
