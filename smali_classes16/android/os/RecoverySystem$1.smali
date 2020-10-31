.class Landroid/os/RecoverySystem$1;
.super Ljava/io/InputStream;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastPercent:I

.field lastPublishTime:J

.field soFar:J

.field toRead:J

.field final synthetic val$commentSize:I

.field final synthetic val$fileLen:J

.field final synthetic val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$raf:Ljava/io/RandomAccessFile;

.field final synthetic val$startTimeMillis:J


# direct methods
.method constructor <init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V
    .registers 8

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iput p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    iput-wide p4, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-object p6, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    iput-object p7, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iget p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    int-to-long p3, p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x2

    sub-long/2addr p1, p3

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->toRead:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->soFar:J

    const/4 p1, 0x0

    iput p1, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    iget-wide p1, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    move v0, p3

    iget-wide v1, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v3, v0

    add-long/2addr v3, v1

    iget-wide v5, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_22

    sub-long/2addr v5, v1

    long-to-int v0, v5

    :cond_22
    iget-object v1, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    iget-object v2, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    if-eqz v2, :cond_56

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/os/RecoverySystem$1;->soFar:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->toRead:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    iget v5, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    if-le v4, v5, :cond_56

    iget-wide v5, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-lez v5, :cond_56

    iput v4, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    iput-wide v2, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    iget-object v5, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    invoke-interface {v5, v4}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_56
    return v1
.end method
