.class public Lcom/android/camera/MemoryHelper;
.super Ljava/lang/Object;
.source "MemoryHelper.java"


# static fields
.field private static sCapturedNumberArray:Landroid/util/SparseIntArray;

.field private static sTrimLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCapturedNumber(II)V
    .locals 2

    sget-object v0, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sget-object v1, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    add-int/2addr v0, p1

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public static resetCapturedNumber(I)V
    .locals 2

    sget-object v0, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static setTrimLevel(I)V
    .locals 0

    sput p0, Lcom/android/camera/MemoryHelper;->sTrimLevel:I

    return-void
.end method

.method public static shouldTrimMemory(I)Z
    .locals 5

    sget v0, Lcom/android/camera/MemoryHelper;->sTrimLevel:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v4, 0xf

    if-eq v0, v4, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-lt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :cond_2
    sget-object v0, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/16 v0, 0x14

    if-lt p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    :cond_4
    sget-object v0, Lcom/android/camera/MemoryHelper;->sCapturedNumberArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2
.end method
