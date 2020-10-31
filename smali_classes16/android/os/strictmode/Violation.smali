.class public abstract Landroid/os/strictmode/Violation;
.super Ljava/lang/Throwable;
.source "Violation.java"


# instance fields
.field private mHashCode:I

.field private mHashCodeValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static calcStackTraceHashCode([Ljava/lang/StackTraceElement;)I
    .registers 5

    const/16 v0, 0x11

    if-eqz p0, :cond_19

    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_19

    aget-object v2, p0, v1

    if-eqz v2, :cond_16

    mul-int/lit8 v2, v0, 0x25

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return v0
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/os/strictmode/Violation;->mHashCode:I

    monitor-exit p0

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/os/strictmode/Violation;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/strictmode/Violation;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    mul-int/lit8 v3, v2, 0x25

    invoke-virtual {p0}, Landroid/os/strictmode/Violation;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Landroid/os/strictmode/Violation;->calcStackTraceHashCode([Ljava/lang/StackTraceElement;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x25

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    add-int/2addr v2, v4

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    iput v2, p0, Landroid/os/strictmode/Violation;->mHashCode:I

    monitor-exit p0

    return v2

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    invoke-super {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Landroid/os/strictmode/Violation;->mHashCodeValid:Z

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method
