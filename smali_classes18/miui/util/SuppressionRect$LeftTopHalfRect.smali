.class public Lmiui/util/SuppressionRect$LeftTopHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeftTopHalfRect"
.end annotation


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setType(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setTopLeftX(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setTopLeftY(I)V

    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setBottomRightX(I)V

    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$LeftTopHalfRect;->setBottomRightY(I)V

    return-void
.end method
