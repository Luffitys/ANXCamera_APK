.class public abstract Lcom/miui/internal/variable/Android_View_View_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_View_View_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;,
        Lcom/miui/internal/variable/Android_View_View_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/view/View;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field private static final sCustomizedValues:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/util/async/ConcurrentWeakHashMap<",
            "Landroid/view/View;",
            "Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStateAttributeIndexes:Landroid/util/SparseIntArray;

.field private static final sViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-direct {v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sCustomizedValues:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const v1, 0x101009c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x101009e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x101009f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10100a9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    shl-int v1, v2, v1

    const v3, 0x10102fe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_first_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v2, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_middle_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v2, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_last_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v2, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_single_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v2, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_first_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v2, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_middle_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v2, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_last_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v2, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    sget v1, Lmiui/R$attr;->state_single_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static declared-synchronized getIndexOfStates(I)I
    .registers 6

    const-class v0, Lcom/miui/internal/variable/Android_View_View_class;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_35

    :try_start_6
    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-nez v2, :cond_30

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_28

    const/4 v3, 0x1

    sget-object v4, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    shl-int v1, v3, v4

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_35

    :cond_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "State attribute cannot exceed 32!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_32

    :cond_30
    move v1, v2

    goto :goto_35

    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_35
    :goto_35
    monitor-exit v0

    return v1
.end method

.method private static getIndexOfStates([I)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    array-length v1, p0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    invoke-static {v3}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return v0
.end method


# virtual methods
.method public abstract createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
.end method

.method protected getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
    .registers 4

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sCustomizedValues:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    if-nez v0, :cond_15

    new-instance v1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    invoke-direct {v1}, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;-><init>()V

    move-object v0, v1

    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->sCustomizedValues:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method public getHorizontalState(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iget v0, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    return v0
.end method

.method public getVerticalState(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iget v0, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    return v0
.end method

.method public hasInitViewSequenceStates(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return v0
.end method

.method protected onCreateDrawableState(Landroid/view/View;[II)[I
    .registers 12

    const-class v0, Lcom/miui/internal/variable/Android_View_View_class;

    move-object v1, p2

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_56

    if-eqz v3, :cond_56

    invoke-static {p2}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates([I)I

    move-result v5

    invoke-static {v2}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v3}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v6

    or-int/2addr v5, v6

    monitor-enter v0

    :try_start_1f
    sget-object v6, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v1, v6

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_53

    if-nez v1, :cond_56

    if-eqz p2, :cond_2f

    array-length v6, p2

    goto :goto_30

    :cond_2f
    move v6, v4

    :goto_30
    add-int/lit8 v7, v6, 0x2

    new-array v7, v7, [I

    if-eqz v6, :cond_39

    invoke-static {p2, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39
    aput v2, v7, v6

    add-int/lit8 v1, v6, 0x1

    aput v3, v7, v1

    monitor-enter v0

    :try_start_40
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4d

    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4d
    monitor-exit v0

    move-object v1, v7

    goto :goto_56

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_50

    throw v1

    :catchall_53
    move-exception v4

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v4

    :cond_56
    :goto_56
    if-eqz p3, :cond_66

    if-nez v1, :cond_5d

    new-array v1, p3, [I

    goto :goto_66

    :cond_5d
    array-length v0, v1

    add-int/2addr v0, p3

    new-array v0, v0, [I

    array-length v5, v1

    invoke-static {v1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_66
    :goto_66
    return-object v1
.end method

.method public abstract relayout(Landroid/view/View;)V
.end method

.method public setHasInitViewSequenceStates(Landroid/view/View;Z)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iput-boolean p2, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return-void
.end method

.method public setHorizontalState(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iput p2, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    return-void
.end method

.method public abstract setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V
.end method

.method public abstract setLeftDirectly(Landroid/view/View;I)V
.end method

.method public abstract setRightDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollXDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollYDirectly(Landroid/view/View;I)V
.end method

.method public setVerticalState(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object v0

    iput p2, v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    return-void
.end method
