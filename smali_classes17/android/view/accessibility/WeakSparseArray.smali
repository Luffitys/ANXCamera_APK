.class final Landroid/view/accessibility/WeakSparseArray;
.super Ljava/lang/Object;
.source "WeakSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/WeakSparseArray;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/WeakSparseArray;->mSparseArray:Landroid/util/SparseArray;

    return-void
.end method

.method private removeUnreachableValues()V
    .registers 4

    iget-object v0, p0, Landroid/view/accessibility/WeakSparseArray;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_19

    iget-object v1, p0, Landroid/view/accessibility/WeakSparseArray;->mSparseArray:Landroid/util/SparseArray;

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;

    iget v2, v2, Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Landroid/view/accessibility/WeakSparseArray;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_6

    :cond_19
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/accessibility/WeakSparseArray;->removeUnreachableValues()V

    iget-object v0, p0, Landroid/view/accessibility/WeakSparseArray;->mSparseArray:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;

    iget-object v2, p0, Landroid/view/accessibility/WeakSparseArray;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p2, v2, p1}, Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/accessibility/WeakSparseArray;->removeUnreachableValues()V

    iget-object v0, p0, Landroid/view/accessibility/WeakSparseArray;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public remove(I)V
    .registers 3

    invoke-direct {p0}, Landroid/view/accessibility/WeakSparseArray;->removeUnreachableValues()V

    iget-object v0, p0, Landroid/view/accessibility/WeakSparseArray;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
