.class public Lmiui/util/SuppressionRect$bottomLeftHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bottomLeftHalfRect"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setTopLeftX(I)V

    sub-int v0, p2, p4

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setTopLeftY(I)V

    div-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setBottomRightX(I)V

    invoke-virtual {p0, p2}, Lmiui/util/SuppressionRect$bottomLeftHalfRect;->setBottomRightY(I)V

    return-void
.end method
