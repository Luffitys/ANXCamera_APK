.class public abstract Lcom/miui/internal/variable/Android_View_View_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# static fields
.field private static final sCustomizedValues:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

.field private static final sStateAttributeIndexes:Landroid/util/SparseIntArray;

.field private static final sViewStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

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
    .locals 1

    const-class v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static declared-synchronized getIndexOfStates(I)I
    .locals 3

    const-class v0, Lcom/miui/internal/variable/Android_View_View_class;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int/2addr v1, v2

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->sStateAttributeIndexes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "State attribute cannot exceed 32!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return v1
.end method

.method private static getIndexOfStates([I)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    invoke-static {v3}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
.end method

.method protected getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
    .locals 1

    sget-object p0, Lcom/miui/internal/variable/Android_View_View_class;->sCustomizedValues:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {p0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    if-nez p0, :cond_0

    new-instance p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;-><init>()V

    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->sCustomizedValues:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public getHorizontalState(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iget p0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    return p0
.end method

.method public getVerticalState(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iget p0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    return p0
.end method

.method public hasInitViewSequenceStates(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iget-boolean p0, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return p0
.end method

.method protected onCreateDrawableState(Landroid/view/View;[II)[I
    .locals 5

    const-class v0, Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result p0

    const/4 p1, 0x0

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    invoke-static {p2}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates([I)I

    move-result v2

    invoke-static {v1}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {p0}, Lcom/miui/internal/variable/Android_View_View_class;->getIndexOfStates(I)I

    move-result v3

    or-int/2addr v2, v3

    monitor-enter v0

    :try_start_0
    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_3

    if-eqz p2, :cond_0

    array-length v3, p2

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    add-int/lit8 v4, v3, 0x2

    new-array v4, v4, [I

    if-eqz v3, :cond_1

    invoke-static {p2, p1, v4, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    aput p0, v4, v3

    monitor-enter v0

    :try_start_1
    sget-object p0, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/miui/internal/variable/Android_View_View_class;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    monitor-exit v0

    move-object p2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    move-object p2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    if-nez p2, :cond_5

    new-array p2, p3, [I

    goto :goto_2

    :cond_5
    array-length p0, p2

    add-int/2addr p0, p3

    new-array p0, p0, [I

    array-length p3, p2

    invoke-static {p2, p1, p0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p0

    :cond_6
    :goto_2
    return-object p2
.end method

.method public abstract relayout(Landroid/view/View;)V
.end method

.method public setHasInitViewSequenceStates(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iput-boolean p2, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return-void
.end method

.method public setHorizontalState(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iput p2, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

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
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p0

    iput p2, p0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    return-void
.end method
