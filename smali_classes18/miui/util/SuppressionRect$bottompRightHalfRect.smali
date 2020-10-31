.class public Lmiui/util/SuppressionRect$bottompRightHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bottompRightHalfRect"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$bottompRightHalfRect;->setType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottompRightHalfRect;->setPosition(I)V

    div-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottompRightHalfRect;->setTopLeftX(I)V

    sub-int v0, p2, p4

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottompRightHalfRect;->setTopLeftY(I)V

    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$bottompRightHalfRect;->setBottomRightX(I)V

    invoke-virtual {p0, p2}, Lmiui/util/SuppressionRect$bottompRightHalfRect;->setBottomRightY(I)V

    return-void
.end method
