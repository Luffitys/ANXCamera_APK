.class Landroid/gesture/InstanceLearner$1;
.super Ljava/lang/Object;
.source "InstanceLearner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/InstanceLearner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/gesture/Prediction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I
    .registers 8

    iget-wide v0, p1, Landroid/gesture/Prediction;->score:D

    iget-wide v2, p2, Landroid/gesture/Prediction;->score:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_a

    const/4 v4, -0x1

    return v4

    :cond_a
    cmpg-double v4, v0, v2

    if-gez v4, :cond_10

    const/4 v4, 0x1

    return v4

    :cond_10
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/gesture/Prediction;

    check-cast p2, Landroid/gesture/Prediction;

    invoke-virtual {p0, p1, p2}, Landroid/gesture/InstanceLearner$1;->compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I

    move-result p1

    return p1
.end method
