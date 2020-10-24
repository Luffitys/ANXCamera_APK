.class public final Lcom/miui/internal/server/DropBoxManagerService;
.super Lcom/miui/internal/server/IDropBoxManagerService$Stub;
.source ""


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final DROPBOX_TAG_PREFIX:Ljava/lang/String; = "dropbox:"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field public static final SERVICE_NAME:Ljava/lang/String; = "DropBoxManagerService"

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private mContext:Landroid/content/Context;

.field private mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;

.field private mHandler:Landroid/os/Handler;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$1;

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService$1;-><init>()V

    sput-object v0, Lcom/miui/internal/server/DropBoxManagerService;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/server/DropBoxManagerService$2;-><init>(Lcom/miui/internal/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->initAndTrimAsync()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/server/DropBoxManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/server/DropBoxManagerService;)J
    .locals 2

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    :cond_0
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const-wide/16 v5, 0x1

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v7, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    if-eqz v4, :cond_5

    array-length v0, v4

    const/4 v7, 0x0

    move-wide v12, v2

    :goto_0
    if-ge v7, v0, :cond_4

    aget-object v2, v4, v7

    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-eqz v3, :cond_2

    iget-object v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v8, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_2
    iget v3, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    new-instance v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget-object v10, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v11, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v16, v12, v5

    iget v14, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    iget v15, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v3}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v12, v16

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v8, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v2, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v9, v12, v5

    invoke-direct {v3, v8, v2, v12, v13}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v3}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    move-wide v12, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move-wide v2, v12

    :cond_5
    if-nez p1, :cond_6

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    :goto_2
    invoke-direct {v1, v0}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    goto :goto_3

    :cond_6
    move-object/from16 v5, p2

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v6, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move-object v14, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move-object/from16 v17, p2

    move-wide/from16 v18, v2

    move/from16 v20, p3

    move/from16 v21, v6

    invoke-direct/range {v14 .. v21}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget p1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/miui/internal/server/DropBoxManagerService;
    .locals 1

    sget-object v0, Lcom/miui/internal/server/DropBoxManagerService;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService;

    return-object v0
.end method

.method private declared-synchronized init()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t statfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_3
    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    iget-object v5, v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    iget-wide v5, v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-direct {p0, v4}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t list files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initAndTrimAsync()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/DropBoxManagerService$3;-><init>(Lcom/miui/internal/server/DropBoxManagerService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-static {p1, p0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object p0

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->initAndTrimAsync()V

    :cond_0
    return-void
.end method

.method private declared-synchronized trimToFit()J
    .locals 9

    monitor-enter p0

    const/16 v0, 0x3e8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0xf731400

    int-to-long v3, v3

    sub-long/2addr v1, v3

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-ge v4, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_2
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_3
    iget-object v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    const/high16 v4, 0x500000

    iget v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v4, v5

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v1, :cond_d

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-lez v3, :cond_6

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v6, v0

    div-int/2addr v6, v3

    if-gt v5, v6, :cond_6

    goto :goto_3

    :cond_6
    iget v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v3, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v3, v4, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    iget v3, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    if-le v3, v2, :cond_8

    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_a
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :try_start_1
    iget-object v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v4, :cond_c

    iget-object v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_c
    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v4}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t write tombstone file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_d
    :goto_5
    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    int-to-long v0, v0

    iget v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, v2

    mul-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Lmiui/os/DropBoxManager$Entry;)V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "DropBoxManagerService"

    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getFlags()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    invoke-virtual {v0, v2}, Lcom/miui/internal/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget v9, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    new-array v10, v9, [B

    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v9, :cond_2

    sub-int v14, v9, v13

    :try_start_2
    invoke-virtual {v11, v10, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-gtz v14, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v13, v14

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v14, Ljava/io/File;

    iget-object v15, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "drop"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    move-wide/from16 v18, v5

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    const/16 v5, 0x1000

    if-le v3, v5, :cond_3

    move v3, v5

    :cond_3
    const/16 v5, 0x200

    if-ge v3, v5, :cond_4

    move v3, v5

    :cond_4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v13, v9, :cond_5

    and-int/lit8 v3, v4, 0x4

    if-nez v3, :cond_5

    :try_start_4
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    or-int/lit8 v4, v4, 0x4

    move-object v6, v3

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v6, v10, v3, v13}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v20, v12, v7

    const-wide/16 v22, 0x7530

    cmp-long v9, v20, v22

    if-lez v9, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v7

    move-wide/from16 v24, v7

    move-wide v7, v12

    move-wide/from16 v12, v24

    goto :goto_3

    :cond_6
    move-wide/from16 v12, v18

    :goto_3
    invoke-virtual {v11, v10}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_7

    invoke-static {v5}, Lmiui/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    :goto_4
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v17, v12

    if-lez v15, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    if-gtz v9, :cond_b

    :goto_5
    invoke-direct {v0, v14, v2, v4}, Lcom/miui/internal/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v5, Landroid/content/Intent;

    const-string v7, "miui.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "tag"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "time"

    invoke-virtual {v5, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_9

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_9
    if-eqz v11, :cond_a

    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v3, v6

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v3, v6

    goto :goto_7

    :cond_b
    move-wide/from16 v18, v12

    move v13, v9

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v6

    move-object/from16 v16, v14

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v3, v6

    move-object/from16 v16, v14

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v16, v14

    const/4 v3, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v16, v14

    const/4 v3, 0x0

    goto :goto_8

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_6
    const/16 v16, 0x0

    goto :goto_a

    :catch_6
    move-exception v0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_7
    const/16 v16, 0x0

    :goto_8
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v3, :cond_d

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_d
    if-eqz v11, :cond_e

    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_f
    :goto_9
    return-void

    :catchall_5
    move-exception v0

    :goto_a
    if-eqz v3, :cond_10

    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :catch_9
    :cond_10
    if-eqz v11, :cond_11

    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_12
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: Can\'t dump DropBoxManagerService"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-eqz v3, :cond_6

    array-length v10, v3

    if-ge v0, v10, :cond_6

    aget-object v10, v3, v0

    const-string v11, "-p"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    aget-object v10, v3, v0

    const-string v11, "--print"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    aget-object v10, v3, v0

    const-string v11, "-f"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    aget-object v10, v3, v0

    const-string v11, "--file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    aget-object v9, v3, v0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v14, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v11, v14, v15}, Landroid/text/format/Time;->set(J)V

    const-string v14, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_6
    if-ge v15, v10, :cond_b

    if-eqz v16, :cond_b

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    iget-object v9, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v16, 0x1

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_b
    if-nez v16, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v6, v0, 0x1

    if-eqz v7, :cond_d

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "(no tag)"

    goto :goto_9

    :cond_e
    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v0, :cond_f

    const-string v0, " (no file)\n"

    :goto_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v5

    move/from16 v21, v10

    const/4 v14, 0x0

    goto/16 :goto_19

    :cond_f
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    const/4 v9, 0x1

    and-int/2addr v0, v9

    if-eqz v0, :cond_10

    const-string v0, " (contents lost)\n"

    goto :goto_a

    :cond_10
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    const-string v0, "text"

    goto :goto_b

    :cond_12
    const-string v0, "data"

    :goto_b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_13

    if-eqz v7, :cond_15

    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    :cond_13
    if-nez v7, :cond_14

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_21

    if-nez v7, :cond_16

    if-nez v8, :cond_21

    :cond_16
    :try_start_3
    new-instance v15, Lmiui/os/DropBoxManager$Entry;

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v21, v10

    :try_start_4
    iget-wide v9, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v14, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v23, v5

    :try_start_5
    iget v5, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v14

    move/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v0, 0xa

    if-eqz v7, :cond_1b

    :try_start_6
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual/range {v24 .. v24}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v9, 0x1000

    :try_start_7
    new-array v9, v9, [C

    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v5, v9}, Ljava/io/InputStreamReader;->read([C)I

    move-result v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-gtz v14, :cond_18

    if-nez v10, :cond_17

    :try_start_8
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v22, v5

    const/4 v14, 0x0

    goto/16 :goto_15

    :cond_17
    :goto_d
    move-object/from16 v9, v24

    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_18
    const/4 v10, 0x0

    :try_start_9
    invoke-virtual {v4, v9, v10, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 v14, v14, -0x1

    :try_start_a
    aget-char v10, v9, v14

    if-ne v10, v0, :cond_19

    const/4 v10, 0x1

    goto :goto_e

    :cond_19
    const/4 v10, 0x0

    :goto_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/high16 v15, 0x10000

    if-le v14, v15, :cond_1a

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v14, 0x0

    :try_start_b
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_f

    :cond_1a
    const/4 v14, 0x0

    goto :goto_c

    :catch_2
    move-exception v0

    move v14, v10

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object/from16 v22, v5

    goto/16 :goto_16

    :catch_3
    move-exception v0

    const/4 v14, 0x0

    :goto_f
    move-object/from16 v22, v5

    goto/16 :goto_15

    :catchall_1
    move-exception v0

    move-object/from16 v14, v24

    goto :goto_13

    :catch_4
    move-exception v0

    const/4 v14, 0x0

    goto :goto_12

    :cond_1b
    const/4 v14, 0x0

    const/16 v5, 0x46

    move-object/from16 v9, v24

    :try_start_c
    invoke-virtual {v9, v5}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v15, v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_10

    :cond_1c
    move v5, v14

    :goto_10
    const-string v15, "    "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x2f

    invoke-virtual {v10, v0, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1d

    const-string v0, " ..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v5, 0x0

    :goto_11
    :try_start_d
    invoke-virtual {v9}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v5, :cond_22

    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto/16 :goto_18

    :catchall_2
    move-exception v0

    move-object v14, v9

    goto :goto_13

    :catch_5
    move-exception v0

    move-object/from16 v24, v9

    :goto_12
    const/16 v22, 0x0

    goto :goto_15

    :catch_6
    move-exception v0

    goto :goto_14

    :catch_7
    move-exception v0

    move-object/from16 v23, v5

    goto :goto_14

    :catchall_3
    move-exception v0

    const/4 v14, 0x0

    :goto_13
    const/16 v22, 0x0

    goto :goto_17

    :catch_8
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v21, v10

    :goto_14
    const/4 v14, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    :goto_15
    :try_start_f
    const-string v5, "*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v24, :cond_1e

    :try_start_10
    invoke-virtual/range {v24 .. v24}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :cond_1e
    if-eqz v22, :cond_22

    :try_start_11
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_18

    :catchall_4
    move-exception v0

    :goto_16
    move-object/from16 v14, v24

    :goto_17
    if-eqz v14, :cond_1f

    :try_start_12
    invoke-virtual {v14}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_1f
    if-eqz v22, :cond_20

    :try_start_13
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :catch_9
    :cond_20
    :try_start_14
    throw v0

    :cond_21
    move-object/from16 v23, v5

    move/from16 v21, v10

    const/4 v14, 0x0

    :catch_a
    :cond_22
    :goto_18
    if-eqz v7, :cond_23

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    :goto_19
    move v0, v6

    move/from16 v10, v21

    move-object/from16 v5, v23

    goto/16 :goto_5

    :cond_24
    if-nez v0, :cond_25

    const-string v0, "(No entries found.)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    if-eqz v3, :cond_26

    array-length v0, v3

    if-nez v0, :cond_28

    :cond_26
    if-nez v7, :cond_27

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const-string v0, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    monitor-exit p0

    return-void

    :catch_b
    move-exception v0

    move-object v3, v0

    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "miui.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    :try_start_2
    iget-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    iget-object p1, p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    invoke-direct {v1, p2, p3}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object p3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget p3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_3

    new-instance p1, Lmiui/os/DropBoxManager$Entry;

    iget-object p3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {p1, p3, v0, v1}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_4
    new-instance p3, Lmiui/os/DropBoxManager$Entry;

    iget-object v2, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v5, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v6, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p3

    :catch_0
    move-exception p3

    :try_start_5
    const-string v1, "DropBoxManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v0

    :catch_1
    move-exception p1

    :try_start_6
    const-string p2, "DropBoxManagerService"

    const-string p3, "Can\'t init"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_7
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "READ_LOGS permission required"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string p0, "disabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
