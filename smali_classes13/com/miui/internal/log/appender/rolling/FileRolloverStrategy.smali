.class public Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;
.super Ljava/lang/Object;
.source "FileRolloverStrategy.java"

# interfaces
.implements Lcom/miui/internal/log/appender/rolling/RolloverStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileRolloverStrategy"


# instance fields
.field private mMaxBackupIndex:I

.field private mMaxFileSize:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    return-void
.end method


# virtual methods
.method public getMaxBackupIndex()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    return v0
.end method

.method public getMaxFileSize()J
    .registers 3

    iget-wide v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    return-wide v0
.end method

.method public rollover(Lcom/miui/internal/log/appender/rolling/RollingFileManager;)Ljava/lang/String;
    .registers 11

    invoke-virtual {p1}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->getLogSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    invoke-virtual {p1}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->getLogFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "FileRolloverStrategy"

    const-string v2, "Start to rollover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_30
    if-lez v3, :cond_68

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_65

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_65
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    :cond_68
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v4, "Rollover done"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setMaxBackupIndex(I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be less than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxFileSize(I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size can\'t be less than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
