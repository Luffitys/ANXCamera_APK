.class public Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
.super Ljava/lang/Object;
.source "KernelCpuUidBpfMapReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BpfMapIterator"
.end annotation


# instance fields
.field private mPos:I

.field final synthetic this$0:Lcom/android/internal/os/KernelCpuUidBpfMapReader;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/KernelCpuUidBpfMapReader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->this$0:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->this$0:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-object v0, v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public getNextUid([J)Z
    .registers 6

    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->mPos:I

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->this$0:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-object v1, v1, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->this$0:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-object v0, v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->mPos:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, p1, v2

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->this$0:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-object v0, v0, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->mPos:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->this$0:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-object v1, v1, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->mData:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->mPos:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    array-length v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->mPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->mPos:I

    return v3
.end method
