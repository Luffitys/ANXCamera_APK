.class public Lmiui/util/SuppressionRect$LeftBottomHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeftBottomHalfRect"
.end annotation


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setType(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setTopLeftX(I)V

    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setTopLeftY(I)V

    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setBottomRightX(I)V

    invoke-virtual {p0, p2}, Lmiui/util/SuppressionRect$LeftBottomHalfRect;->setBottomRightY(I)V

    return-void
.end method
