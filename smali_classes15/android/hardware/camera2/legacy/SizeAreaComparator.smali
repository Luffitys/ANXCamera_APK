.class public Landroid/hardware/camera2/legacy/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SizeAreaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const-string/jumbo v0, "sizes must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .registers 14

    const-string/jumbo v0, "size must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "size2 must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-long v0, v0

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, v2

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-long v4, v4

    mul-long/2addr v4, v0

    iget v6, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-long v6, v6

    mul-long/2addr v6, v2

    cmp-long v8, v4, v6

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-nez v8, :cond_2f

    cmp-long v8, v0, v2

    if-lez v8, :cond_2d

    goto :goto_2e

    :cond_2d
    move v9, v10

    :goto_2e
    return v9

    :cond_2f
    cmp-long v8, v4, v6

    if-lez v8, :cond_34

    goto :goto_35

    :cond_34
    move v9, v10

    :goto_35
    return v9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
