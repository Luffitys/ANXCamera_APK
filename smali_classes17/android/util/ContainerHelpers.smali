.class Landroid/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .registers 7

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_3
    if-gt v0, v1, :cond_16

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    aget v3, p0, v2

    if-ge v3, p2, :cond_10

    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    :cond_10
    if-le v3, p2, :cond_15

    add-int/lit8 v1, v2, -0x1

    :goto_14
    goto :goto_3

    :cond_15
    return v2

    :cond_16
    not-int v2, v0

    return v2
.end method

.method static binarySearch([JIJ)I
    .registers 10

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_3
    if-gt v0, v1, :cond_1a

    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    aget-wide v3, p0, v2

    cmp-long v5, v3, p2

    if-gez v5, :cond_12

    add-int/lit8 v0, v2, 0x1

    goto :goto_18

    :cond_12
    cmp-long v5, v3, p2

    if-lez v5, :cond_19

    add-int/lit8 v1, v2, -0x1

    :goto_18
    goto :goto_3

    :cond_19
    return v2

    :cond_1a
    not-int v2, v0

    return v2
.end method
