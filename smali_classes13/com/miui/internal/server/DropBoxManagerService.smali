.class public final Lcom/miui/internal/server/DropBoxManagerService;
.super Lcom/miui/internal/server/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/DropBoxManagerService$EntryFile;,
        Lcom/miui/internal/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final DROPBOX_TAG_PREFIX:Ljava/lang/String; = "dropbox:"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/server/DropBoxManagerService;",
            ">;"
        }
    .end annotation
.end field

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$1;

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService$1;-><init>()V

    sput-object v0, Lcom/miui/internal/server/DropBoxManagerService;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

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

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

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
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/server/DropBoxManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/server/DropBoxManagerService;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/server/DropBoxManagerService;)J
    .registers 3

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
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

    if-nez v5, :cond_2e

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    :cond_2e
    iget-object v5, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_4c

    iget-object v5, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    :cond_4c
    if-eqz v4, :cond_bd

    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    :goto_51
    if-ge v8, v5, :cond_b9

    aget-object v2, v4, v8

    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-eqz v3, :cond_79

    iget-object v9, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    iget v9, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_79
    iget v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a0

    new-instance v15, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v10, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget-object v11, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    iget v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    move-object/from16 v19, v0

    move-object v0, v15

    move v15, v7

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_b3

    :cond_a0
    move-object/from16 v19, v0

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    invoke-direct {v0, v6, v7, v13, v14}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    move-wide v13, v11

    :goto_b3
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_51

    :cond_b9
    move-object/from16 v19, v0

    move-wide v2, v13

    goto :goto_bf

    :cond_bd
    move-object/from16 v19, v0

    :goto_bf
    if-nez p1, :cond_ce

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    goto :goto_ea

    :cond_ce
    move-object/from16 v6, p2

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v7, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    move-object/from16 v23, p2

    move-wide/from16 v24, v2

    move/from16 v26, p3

    move/from16 v27, v7

    invoke-direct/range {v20 .. v27}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_ea
    .catchall {:try_start_3 .. :try_end_ea} :catchall_ec

    :goto_ea
    monitor-exit p0

    return-wide v2

    :catchall_ec
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_43

    iget v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_43

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_37

    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/miui/internal/server/DropBoxManagerService;
    .registers 1

    sget-object v0, Lcom/miui/internal/server/DropBoxManagerService;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService;

    return-object v0
.end method

.method private declared-synchronized init()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    :cond_16
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
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_109

    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_42} :catch_43
    .catchall {:try_start_2f .. :try_end_42} :catchall_109

    goto :goto_5d

    :catch_43
    move-exception v0

    :try_start_44
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_ee

    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7a
    if-ge v2, v1, :cond_107

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_eb

    :cond_a4
    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    iget-object v5, v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v5, :cond_c6

    const-string v5, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    :cond_c6
    iget-wide v5, v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_e8

    const-string v5, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_eb

    :cond_e8
    invoke-direct {p0, v4}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    :goto_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_ee
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_107
    .catchall {:try_start_44 .. :try_end_107} :catchall_109

    :cond_107
    monitor-exit p0

    return-void

    :catchall_109
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initAndTrimAsync()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/DropBoxManagerService$3;-><init>(Lcom/miui/internal/server/DropBoxManagerService;)V

    invoke-virtual {v0}, Lcom/miui/internal/server/DropBoxManagerService$3;->start()V

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-static {p1, v0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v0

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService;->initAndTrimAsync()V

    :cond_f
    return-void
.end method

.method private declared-synchronized trimToFit()J
    .registers 21

    move-object/from16 v1, p0

    monitor-enter p0

    const v2, 0x3f480

    const/16 v3, 0x3e8

    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v6, v0

    sub-long/2addr v4, v6

    :goto_10
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v6, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_35

    iget-object v6, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v6

    if-ge v6, v3, :cond_35

    goto :goto_6d

    :cond_35
    iget-object v6, v1, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-eqz v6, :cond_50

    iget-object v7, v6, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v7, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    iget v7, v6, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_50
    iget-object v7, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v7, v7, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v7, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    iget-object v7, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v8, v7, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_63
    iget-object v7, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v7, :cond_6c

    iget-object v7, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_6c
    goto :goto_10

    :cond_6d
    :goto_6d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v10, 0x1388

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_b2

    const/16 v0, 0xa

    const/16 v8, 0xa

    const/16 v9, 0x1400

    iget-object v10, v1, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    iget-object v11, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    iget-object v11, v1, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    mul-int/2addr v11, v8

    div-int/lit8 v11, v11, 0x64

    sub-int v11, v10, v11

    mul-int/lit16 v12, v9, 0x400

    iget v13, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v12, v13

    const/4 v13, 0x0

    mul-int v14, v11, v0

    div-int/lit8 v14, v14, 0x64

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iput-wide v6, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    :cond_b2
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v8, :cond_19d

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    const/4 v8, 0x0

    new-instance v9, Ljava/util/TreeSet;

    iget-object v10, v1, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v8

    move v8, v0

    :goto_d0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-lez v11, :cond_e7

    iget v12, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v13, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v13, v8

    div-int/2addr v13, v11

    if-gt v12, v13, :cond_e7

    goto :goto_ee

    :cond_e7
    iget v12, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v8, v12

    nop

    add-int/lit8 v11, v11, 0x1

    goto :goto_d0

    :cond_ee
    :goto_ee
    iget v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v8

    div-int/2addr v0, v11

    move v10, v0

    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_196

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object v13, v0

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v14, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v14, :cond_114

    move/from16 v16, v2

    move/from16 v17, v3

    move-wide/from16 v18, v4

    goto/16 :goto_1a3

    :cond_114
    :goto_114
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v10, :cond_188

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_188

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    move-object v14, v0

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v14}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v15, v14, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v15

    iput v0, v13, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    :cond_138
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v14}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v15, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v16, v2

    iget v2, v14, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v15, v2

    iput v15, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_14d
    .catchall {:try_start_8 .. :try_end_14d} :catchall_1ac

    goto :goto_150

    :cond_14e
    move/from16 v16, v2

    :goto_150
    :try_start_150
    iget-object v0, v14, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_152} :catch_175
    .catchall {:try_start_150 .. :try_end_152} :catchall_1ac

    if-eqz v0, :cond_160

    :try_start_154
    iget-object v0, v14, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_159} :catch_15a
    .catchall {:try_start_154 .. :try_end_159} :catchall_1ac

    goto :goto_160

    :catch_15a
    move-exception v0

    move/from16 v17, v3

    move-wide/from16 v18, v4

    goto :goto_17a

    :cond_160
    :goto_160
    :try_start_160
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v15, v14, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_166} :catch_175
    .catchall {:try_start_160 .. :try_end_166} :catchall_1ac

    move/from16 v17, v3

    move-wide/from16 v18, v4

    :try_start_16a
    iget-wide v3, v14, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v2, v15, v3, v4}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_172} :catch_173
    .catchall {:try_start_16a .. :try_end_172} :catchall_1ac

    goto :goto_181

    :catch_173
    move-exception v0

    goto :goto_17a

    :catch_175
    move-exception v0

    move/from16 v17, v3

    move-wide/from16 v18, v4

    :goto_17a
    :try_start_17a
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t write tombstone file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_181
    move/from16 v2, v16

    move/from16 v3, v17

    move-wide/from16 v4, v18

    goto :goto_114

    :cond_188
    move/from16 v16, v2

    move/from16 v17, v3

    move-wide/from16 v18, v4

    move/from16 v2, v16

    move/from16 v3, v17

    move-wide/from16 v4, v18

    goto/16 :goto_f7

    :cond_196
    move/from16 v16, v2

    move/from16 v17, v3

    move-wide/from16 v18, v4

    goto :goto_1a3

    :cond_19d
    move/from16 v16, v2

    move/from16 v17, v3

    move-wide/from16 v18, v4

    :goto_1a3
    iget v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    int-to-long v2, v0

    iget v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1a8
    .catchall {:try_start_17a .. :try_end_1a8} :catchall_1ac

    int-to-long v4, v0

    mul-long/2addr v2, v4

    monitor-exit p0

    return-wide v2

    :catchall_1ac
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Lmiui/os/DropBoxManager$Entry;)V
    .registers 25

    move-object/from16 v1, p0

    const-string v2, "DropBoxManagerService"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v6

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    move v7, v0

    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_17e

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    invoke-virtual {v1, v6}, Lcom/miui/internal/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_19c
    .catchall {:try_start_b .. :try_end_1b} :catchall_195

    if-nez v0, :cond_34

    if-eqz v4, :cond_24

    :try_start_1f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    move-exception v0

    :cond_24
    :goto_24
    if-eqz v5, :cond_2b

    :try_start_26
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2b

    :catch_2a
    move-exception v0

    :cond_2b
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_33
    return-void

    :cond_34
    :try_start_34
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    new-array v0, v0, [B

    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    move-object v5, v12

    const/4 v12, 0x0

    :goto_46
    array-length v13, v0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_47} :catch_19c
    .catchall {:try_start_34 .. :try_end_47} :catchall_195

    if-ge v12, v13, :cond_57

    :try_start_49
    array-length v13, v0

    sub-int/2addr v13, v12

    invoke-virtual {v5, v0, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4f} :catch_54
    .catchall {:try_start_49 .. :try_end_4f} :catchall_1cd

    if-gtz v13, :cond_52

    goto :goto_57

    :cond_52
    add-int/2addr v12, v13

    goto :goto_46

    :catch_54
    move-exception v0

    goto/16 :goto_1a1

    :cond_57
    :goto_57
    :try_start_57
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_19c
    .catchall {:try_start_57 .. :try_end_60} :catchall_195

    move-object/from16 v16, v3

    :try_start_62
    const-string v3, "drop"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6b} :catch_178
    .catchall {:try_start_62 .. :try_end_6b} :catchall_171

    move-object/from16 v17, v4

    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_80} :catch_18f
    .catchall {:try_start_6d .. :try_end_80} :catchall_188

    move-object v3, v13

    :try_start_81
    iget v4, v1, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    const/16 v13, 0x1000

    if-le v4, v13, :cond_89

    const/16 v4, 0x1000

    :cond_89
    const/16 v13, 0x200

    if-ge v4, v13, :cond_8f

    const/16 v4, 0x200

    :cond_8f
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v13, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_99} :catch_16d
    .catchall {:try_start_81 .. :try_end_99} :catchall_167

    :try_start_99
    array-length v15, v0

    if-ne v12, v15, :cond_a8

    and-int/lit8 v15, v7, 0x4

    if-nez v15, :cond_a8

    new-instance v15, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v15, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v14, v15

    or-int/lit8 v7, v7, 0x4

    :cond_a8
    :goto_a8
    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15, v12}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v17, v15, v10

    const-wide/16 v19, 0x7530

    cmp-long v17, v17, v19

    if-lez v17, :cond_bf

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v17

    move-wide/from16 v8, v17

    move-wide v10, v15

    :cond_bf
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v17

    move/from16 v12, v17

    if-gtz v12, :cond_cf

    invoke-static {v13}, Lmiui/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    const/4 v14, 0x0

    goto :goto_d2

    :cond_cf
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    :goto_d2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v19, v17, v8

    if-lez v19, :cond_113

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    const-string v4, "Dropping: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v21, v10

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_11b

    :cond_113
    move-object/from16 v19, v0

    move/from16 v20, v4

    move-wide/from16 v21, v10

    if-gtz v12, :cond_155

    :goto_11b
    invoke-direct {v1, v3, v6, v7}, Lcom/miui/internal/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v10

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v4, "miui.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "tag"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "time"

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    iget-object v15, v1, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v15, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_13d} :catch_164
    .catchall {:try_start_99 .. :try_end_13d} :catchall_15f

    if-eqz v14, :cond_144

    :try_start_13f
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_143

    goto :goto_144

    :catch_143
    move-exception v0

    :cond_144
    :goto_144
    if-eqz v5, :cond_14b

    :try_start_146
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_14a

    goto :goto_14b

    :catch_14a
    move-exception v0

    :cond_14b
    :goto_14b
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    if-eqz v3, :cond_1cc

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_1cc

    :cond_155
    move-object/from16 v1, p0

    move-object/from16 v0, v19

    move/from16 v4, v20

    move-wide/from16 v10, v21

    goto/16 :goto_a8

    :catchall_15f
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    goto/16 :goto_1cf

    :catch_164
    move-exception v0

    move-object v4, v14

    goto :goto_1a1

    :catchall_167
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v17

    goto/16 :goto_1cf

    :catch_16d
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_1a1

    :catchall_171
    move-exception v0

    move-object/from16 v17, v4

    move-object v1, v0

    move-object/from16 v3, v16

    goto :goto_1cf

    :catch_178
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v3, v16

    goto :goto_1a1

    :cond_17e
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :try_start_182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_188} :catch_18f
    .catchall {:try_start_182 .. :try_end_188} :catchall_188

    :catchall_188
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_1cf

    :catch_18f
    move-exception v0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_1a1

    :catchall_195
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v1, v0

    goto :goto_1cf

    :catch_19c
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :goto_1a1
    :try_start_1a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t write: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b5
    .catchall {:try_start_1a1 .. :try_end_1b5} :catchall_1cd

    if-eqz v4, :cond_1bc

    :try_start_1b7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1bb

    goto :goto_1bc

    :catch_1bb
    move-exception v0

    :cond_1bc
    :goto_1bc
    if-eqz v5, :cond_1c3

    :try_start_1be
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1c2

    goto :goto_1c3

    :catch_1c2
    move-exception v0

    :cond_1c3
    :goto_1c3
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    if-eqz v3, :cond_1cb

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1cb
    move-object v14, v4

    :cond_1cc
    :goto_1cc
    return-void

    :catchall_1cd
    move-exception v0

    move-object v1, v0

    :goto_1cf
    if-eqz v4, :cond_1d6

    :try_start_1d1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1d4} :catch_1d5

    goto :goto_1d6

    :catch_1d5
    move-exception v0

    :cond_1d6
    :goto_1d6
    if-eqz v5, :cond_1dd

    :try_start_1d8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1db} :catch_1dc

    goto :goto_1dd

    :catch_1dc
    move-exception v0

    :cond_1dd
    :goto_1dd
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    if-eqz v3, :cond_1e5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1e5
    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 35

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_7
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "Permission Denial: Can\'t dump DropBoxManagerService"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_364

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_344
    .catchall {:try_start_18 .. :try_end_1b} :catchall_364

    nop

    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move/from16 v30, v5

    move v5, v0

    move v0, v7

    move/from16 v7, v30

    :goto_30
    if-eqz v3, :cond_85

    array-length v8, v3

    if-ge v0, v8, :cond_85

    aget-object v8, v3, v0

    const-string v9, "-p"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_81

    aget-object v8, v3, v0

    const-string v9, "--print"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_81

    :cond_4a
    aget-object v8, v3, v0

    const-string v9, "-f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    aget-object v8, v3, v0

    const-string v9, "--file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    goto :goto_7f

    :cond_5f
    aget-object v8, v3, v0

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    const-string v8, "Unknown argument: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    :cond_79
    aget-object v8, v3, v0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_7f
    :goto_7f
    const/4 v7, 0x1

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v5, 0x1

    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_85
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    :cond_be
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c3
    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v10, v10, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_da
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v12, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    const-string v12, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v9, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_f3
    const/16 v16, 0x1

    if-ge v14, v8, :cond_120

    if-eqz v13, :cond_120

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    move-object/from16 v15, v18

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_117

    move-object/from16 v18, v6

    iget-object v6, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    goto :goto_119

    :cond_114
    const/16 v16, 0x0

    goto :goto_119

    :cond_117
    move-object/from16 v18, v6

    :goto_119
    move/from16 v13, v16

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v18

    goto :goto_f3

    :cond_120
    move-object/from16 v18, v6

    if-nez v13, :cond_127

    move-object/from16 v6, v18

    goto :goto_da

    :cond_127
    add-int/lit8 v6, v0, 0x1

    if-eqz v5, :cond_130

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_130
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_13f

    const-string v0, "(no tag)"

    goto :goto_141

    :cond_13f
    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v0, :cond_159

    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    goto/16 :goto_30d

    :cond_159
    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_170

    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    goto/16 :goto_30d

    :cond_170
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_180

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_180
    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_189

    const-string v0, "text"

    goto :goto_18b

    :cond_189
    const-string v0, "data"

    :goto_18b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_1ab

    if-eqz v5, :cond_1c0

    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c0

    :cond_1ab
    if-nez v5, :cond_1b2

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b2
    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c0
    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_1c2
    .catchall {:try_start_1c .. :try_end_1c2} :catchall_364

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2fb

    if-nez v5, :cond_1d7

    if-nez v7, :cond_1cb

    goto :goto_1d7

    :cond_1cb
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    goto/16 :goto_305

    :cond_1d7
    :goto_1d7
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_1d9
    new-instance v0, Lmiui/os/DropBoxManager$Entry;
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1db} :catch_2ad
    .catchall {:try_start_1d9 .. :try_end_1db} :catchall_2a2

    move/from16 v25, v6

    :try_start_1dd
    iget-object v6, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_1df} :catch_298
    .catchall {:try_start_1dd .. :try_end_1df} :catchall_28f

    move/from16 v26, v7

    move/from16 v27, v8

    :try_start_1e3
    iget-wide v7, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1e5} :catch_289
    .catchall {:try_start_1e3 .. :try_end_1e5} :catchall_283

    move-object/from16 v28, v9

    :try_start_1e7
    iget-object v9, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1e9} :catch_27f
    .catchall {:try_start_1e7 .. :try_end_1e9} :catchall_2ec

    move-object/from16 v29, v10

    :try_start_1eb
    iget v10, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    move-object/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v19 .. v24}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    move-object v14, v0

    const/16 v0, 0xa

    if-eqz v5, :cond_241

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v15, v6

    const/16 v6, 0x1000

    new-array v6, v6, [C

    const/4 v7, 0x0

    :goto_20e
    invoke-virtual {v15, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    if-gtz v8, :cond_21c

    if-nez v7, :cond_21b

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21b
    goto :goto_271

    :cond_21c
    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v8, -0x1

    aget-char v9, v6, v9

    if-ne v9, v0, :cond_229

    move/from16 v9, v16

    goto :goto_22a

    :cond_229
    const/4 v9, 0x0

    :goto_22a
    move v7, v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/high16 v10, 0x10000

    if-le v9, v10, :cond_23f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_240

    :cond_23f
    const/4 v9, 0x0

    :goto_240
    goto :goto_20e

    :cond_241
    const/4 v9, 0x0

    const/16 v6, 0x46

    invoke-virtual {v14, v6}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v6, :cond_24f

    goto :goto_251

    :cond_24f
    move/from16 v16, v9

    :goto_251
    move/from16 v6, v16

    const-string v8, "    "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_26c

    const-string v0, " ..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26c
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_271} :catch_27d
    .catchall {:try_start_1eb .. :try_end_271} :catchall_2ec

    :goto_271
    :try_start_271
    invoke-virtual {v14}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_274
    .catchall {:try_start_271 .. :try_end_274} :catchall_364

    if-eqz v15, :cond_305

    :try_start_276
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_279
    .catch Ljava/io/IOException; {:try_start_276 .. :try_end_279} :catch_27b
    .catchall {:try_start_276 .. :try_end_279} :catchall_364

    :goto_279
    goto/16 :goto_305

    :catch_27b
    move-exception v0

    goto :goto_279

    :catch_27d
    move-exception v0

    goto :goto_2b8

    :catch_27f
    move-exception v0

    move-object/from16 v29, v10

    goto :goto_2b8

    :catchall_283
    move-exception v0

    move-object/from16 v28, v9

    move-object v6, v0

    goto/16 :goto_2ee

    :catch_289
    move-exception v0

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    goto :goto_2b8

    :catchall_28f
    move-exception v0

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object v6, v0

    goto :goto_2ee

    :catch_298
    move-exception v0

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    goto :goto_2b8

    :catchall_2a2
    move-exception v0

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object v6, v0

    goto :goto_2ee

    :catch_2ad
    move-exception v0

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    :goto_2b8
    :try_start_2b8
    const-string v6, "*** "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e1
    .catchall {:try_start_2b8 .. :try_end_2e1} :catchall_2ec

    if-eqz v14, :cond_2e6

    :try_start_2e3
    invoke-virtual {v14}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_2e6
    .catchall {:try_start_2e3 .. :try_end_2e6} :catchall_364

    :cond_2e6
    if-eqz v15, :cond_305

    :try_start_2e8
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_2eb
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_2eb} :catch_27b
    .catchall {:try_start_2e8 .. :try_end_2eb} :catchall_364

    goto :goto_279

    :catchall_2ec
    move-exception v0

    move-object v6, v0

    :goto_2ee
    if-eqz v14, :cond_2f3

    :try_start_2f0
    invoke-virtual {v14}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_2f3
    .catchall {:try_start_2f0 .. :try_end_2f3} :catchall_364

    :cond_2f3
    if-eqz v15, :cond_2fa

    :try_start_2f5
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_2f8
    .catch Ljava/io/IOException; {:try_start_2f5 .. :try_end_2f8} :catch_2f9
    .catchall {:try_start_2f5 .. :try_end_2f8} :catchall_364

    goto :goto_2fa

    :catch_2f9
    move-exception v0

    :cond_2fa
    :goto_2fa
    :try_start_2fa
    throw v6

    :cond_2fb
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    :cond_305
    :goto_305
    if-eqz v5, :cond_30c

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30c
    nop

    :goto_30d
    move-object/from16 v6, v18

    move/from16 v0, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    goto/16 :goto_da

    :cond_31b
    move-object/from16 v18, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    if-nez v0, :cond_32a

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32a
    if-eqz v3, :cond_32f

    array-length v6, v3

    if-nez v6, :cond_33b

    :cond_32f
    if-nez v5, :cond_336

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_336
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_342
    .catchall {:try_start_2fa .. :try_end_342} :catchall_364

    monitor-exit p0

    return-void

    :catch_344
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    :try_start_347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_362
    .catchall {:try_start_347 .. :try_end_362} :catchall_364

    monitor-exit p0

    return-void

    :catchall_364
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "miui.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_94

    if-nez v0, :cond_8c

    const/4 v0, 0x0

    :try_start_c
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_82
    .catchall {:try_start_c .. :try_end_f} :catchall_94

    nop

    if-nez p1, :cond_15

    :try_start_12
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    goto :goto_1d

    :cond_15
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_94

    :goto_1d
    if-nez v1, :cond_21

    monitor-exit p0

    return-object v0

    :cond_21
    :try_start_21
    iget-object v2, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v4, :cond_44

    goto :goto_33

    :cond_44
    iget v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_55

    new-instance v0, Lmiui/os/DropBoxManager$Entry;

    iget-object v2, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v2, v4, v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_94

    monitor-exit p0

    return-object v0

    :cond_55
    :try_start_55
    new-instance v10, Lmiui/os/DropBoxManager$Entry;

    iget-object v5, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v8, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v9, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_63} :catch_65
    .catchall {:try_start_55 .. :try_end_63} :catchall_94

    monitor-exit p0

    return-object v10

    :catch_65
    move-exception v4

    :try_start_66
    const-string v5, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_94

    nop

    goto :goto_33

    :cond_80
    monitor-exit p0

    return-object v0

    :catch_82
    move-exception v1

    :try_start_83
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t init"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_94

    monitor-exit p0

    return-object v0

    :cond_8c
    :try_start_8c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "disabled"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_21

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
