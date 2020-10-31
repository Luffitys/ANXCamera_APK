.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field public static final HISTORY_DIR:Ljava/lang/String; = "battery-history"

.field private static final MIN_FREE_SPACE:I = 0x6400000

.field private static final TAG:Ljava/lang/String; = "BatteryStatsHistory"


# instance fields
.field private mActiveFile:Landroid/util/AtomicFile;

.field private mCurrentFileIndex:I

.field private mCurrentParcel:Landroid/os/Parcel;

.field private mCurrentParcelEnd:I

.field private final mFileNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistoryBuffer:Landroid/os/Parcel;

.field private final mHistoryDir:Ljava/io/File;

.field private mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private mParcelIndex:I

.field private mRecordCount:I

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    new-instance v1, Ljava/io/File;

    const-string v2, "battery-history"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HistoryDir does not exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryStatsHistory"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/os/BatteryStatsHistory$1;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7b

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    goto :goto_87

    :cond_7b
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    :goto_87
    return-void
.end method

.method private getFile(I)Landroid/util/AtomicFile;
    .registers 7

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private hasFreeDiskSpace()Z
    .registers 6

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    const-wide/32 v3, 0x6400000

    cmp-long v1, v1, v3

    if-lez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private setActiveFile(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    return-void
.end method

.method private skipHead(Landroid/os/Parcel;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v2, 0xbb

    if-eq v1, v2, :cond_d

    return v0

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finishIteratingHistory()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public getActiveFile()Landroid/util/AtomicFile;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method public getFilesNumbers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getHistoryUsedSize()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2a

    int-to-long v2, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    :goto_36
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_4e
    return v0
.end method

.method public getNextParcel(Landroid/os/BatteryStats$HistoryItem;)Landroid/os/Parcel;
    .registers 8

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    :cond_7
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge v0, v2, :cond_1d

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    if-ne v0, v2, :cond_24

    return-object v1

    :cond_24
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_2e

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_2e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_33
    :goto_33
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_7a

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    add-int v5, v4, v3

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    if-ge v4, v5, :cond_75

    return-object v0

    :cond_75
    goto :goto_79

    :cond_76
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_79
    goto :goto_33

    :cond_7a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_af

    :goto_7e
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_af

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->skipHead(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_9d

    goto :goto_7e

    :cond_9d
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    add-int v5, v4, v2

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    if-ge v4, v5, :cond_ae

    return-object v0

    :cond_ae
    goto :goto_7e

    :cond_af
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gtz v0, :cond_b8

    return-object v1

    :cond_b8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public readFileToParcel(Landroid/os/Parcel;Landroid/util/AtomicFile;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_18

    move-object v0, v4

    nop

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->skipHead(Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :catch_18
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2e

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_1a

    goto :goto_2b

    :cond_1a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2e
    return-void
.end method

.method public resetAllFiles()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    return-void
.end method

.method public startIteratingHistory()Z
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFileIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    const/4 v0, 0x1

    return v0
.end method

.method public startNextFile()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "BatteryStatsHistory"

    const-string v1, "mFileNumbers should never be empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFile(I)V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->hasFreeDiskSpace()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    :cond_4a
    :goto_4a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mConstants:Lcom/android/internal/os/BatteryStatsImpl$Constants;

    iget v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    if-le v1, v3, :cond_71

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4a

    :cond_71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_10
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_58

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mFileNumbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->getFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [B

    :try_start_2d
    invoke-virtual {v3}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_33

    move-object v4, v5

    goto :goto_52

    :catch_33
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryStatsHistory"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_58
    return-void
.end method
