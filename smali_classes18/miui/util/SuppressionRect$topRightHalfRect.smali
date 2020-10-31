.class public Lmiui/util/SuppressionRect$topRightHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "topRightHalfRect"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .registers 7

    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$topRightHalfRect;->setType(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topRightHalfRect;->setPosition(I)V

    div-int/lit8 v1, p3, 0x2

    invoke-virtual {p0, v1}, Lmiui/util/SuppressionRect$topRightHalfRect;->setTopLeftX(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topRightHalfRect;->setTopLeftY(I)V

    invoke-virtual {p0, p3}, Lmiui/util/SuppressionRect$topRightHalfRect;->setBottomRightX(I)V

    invoke-virtual {p0, p4}, Lmiui/util/SuppressionRect$topRightHalfRect;->setBottomRightY(I)V

    return-void
.end method
