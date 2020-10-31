.class Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadKey"
.end annotation


# instance fields
.field private final mProcessId:I

.field private final mProcessNameHash:I

.field private final mThreadId:I

.field private final mThreadNameHash:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
