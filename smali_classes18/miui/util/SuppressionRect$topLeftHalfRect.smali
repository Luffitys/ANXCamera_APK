.class public Lmiui/util/SuppressionRect$topLeftHalfRect;
.super Lmiui/util/SuppressionRect;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SuppressionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "topLeftHalfRect"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Lmiui/util/SuppressionRect;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setType(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setPosition(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setTopLeftX(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setTopLeftY(I)V

    div-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setBottomRightX(I)V

    invoke-virtual {p0, p4}, Lmiui/util/SuppressionRect$topLeftHalfRect;->setBottomRightY(I)V

    return-void
.end method
