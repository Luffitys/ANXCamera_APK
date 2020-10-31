.class public Landroid/app/FilePinner;
.super Ljava/lang/Object;
.source "FilePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FilePinner$PinTask;
    }
.end annotation


# static fields
.field private static final MAX_LOCK_PAGES:I = 0x3200

.field private static final MAX_PROFILE_COUNT:I = 0xa

.field private static final PROFILE_DELAY:I = 0x1388

.field private static TAG:Ljava/lang/String;

.field private static enablePinAppFile:Z

.field private static mAppsToPin:[Ljava/lang/String;

.field private static mIsSelectedApp:Z

.field private static mPageProfileCount:I

.field private static mPinFileDone:Z

.field private static mfileCaheVecs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "FilePinner"

    sput-object v0, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    nop

    const-string/jumbo v0, "persist.sys.pinappfile"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/FilePinner;->enablePinAppFile:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/FilePinner;->mIsSelectedApp:Z

    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    sput-boolean v1, Landroid/app/FilePinner;->mPinFileDone:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .registers 3

    invoke-static {p0, p1}, Landroid/app/FilePinner;->getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/ArrayList;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/FilePinner;->recordHotPages(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private static getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/app/LoadedApk;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    const-string v2, "arm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v3}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "64"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2d
    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_61

    :try_start_34
    const-class v4, Ldalvik/system/DexFile;

    const-string v5, "getDexFileOutputPath"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_56} :catch_58

    move-object v3, v5

    goto :goto_60

    :catch_58
    move-exception v4

    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v6, "failed get base odex path"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    goto :goto_7e

    :cond_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/oat/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/base.odex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7e
    if-eqz v3, :cond_83

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    :try_start_83
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    instance-of v3, v2, Ldalvik/system/BaseDexClassLoader;

    if-eqz v3, :cond_c9

    move-object v3, v2

    check-cast v3, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v3}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_94
    :goto_94
    const/4 v6, -0x1

    if-eq v4, v6, :cond_c9

    const-string v7, "dex file \""

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    const-string v7, "\","

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v5, v7

    if-eq v4, v6, :cond_94

    if-eq v5, v6, :cond_94

    add-int/lit8 v6, v4, 0xa

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dex/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_c8

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v9, "o"

    invoke-virtual {v8, v7, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_c8} :catch_ca

    :cond_c8
    goto :goto_94

    :cond_c9
    goto :goto_d2

    :catch_ca
    move-exception v2

    sget-object v3, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v4, "failed to find dex files"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d2
    return-object v0
.end method

.method static handlePinAppFile(Landroid/app/Application;Landroid/app/LoadedApk;Landroid/content/res/Resources;)V
    .registers 10

    sget-boolean v0, Landroid/app/FilePinner;->enablePinAppFile:Z

    if-eqz v0, :cond_6e

    sget-boolean v0, Landroid/app/FilePinner;->mIsSelectedApp:Z

    if-eqz v0, :cond_6e

    sget-boolean v0, Landroid/app/FilePinner;->mPinFileDone:Z

    if-nez v0, :cond_6e

    if-eqz p0, :cond_6e

    if-nez p1, :cond_11

    goto :goto_6e

    :cond_11
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    if-eqz p2, :cond_2c

    const v1, 0x1070010

    :try_start_1d
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception v1

    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v3, "failed get app to pin"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    sget-object v1, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6b

    array-length v1, v1

    :cond_32
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_46

    sget-object v3, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    aget-object v4, v3, v1

    if-eqz v4, :cond_32

    aget-object v3, v3, v1

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_46
    if-gez v1, :cond_4b

    sput-boolean v2, Landroid/app/FilePinner;->mIsSelectedApp:Z

    return-void

    :cond_4b
    nop

    sget v1, Landroid/app/FilePinner;->mPageProfileCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_6a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Landroid/app/FilePinner;->mPageProfileCount:I

    const/4 v4, 0x0

    if-ne v1, v2, :cond_5c

    const/4 v4, 0x1

    sput-boolean v3, Landroid/app/FilePinner;->mPinFileDone:Z

    :cond_5c
    new-instance v1, Landroid/app/FilePinner$PinTask;

    invoke-direct {v1, v0, p1, v4}, Landroid/app/FilePinner$PinTask;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;Z)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6a
    return-void

    :cond_6b
    sput-boolean v2, Landroid/app/FilePinner;->mIsSelectedApp:Z

    return-void

    :cond_6e
    :goto_6e
    return-void
.end method

.method private static recordHotPages(Ljava/util/ArrayList;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v1, "Failed to close fd, error = "

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_209

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v4, v0

    const/high16 v5, 0x80000

    move-object/from16 v6, p0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    :try_start_1d
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v8, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v8

    or-int/2addr v0, v5

    sget v8, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {v7, v0, v8}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v15
    :try_end_29
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_29} :catch_197
    .catchall {:try_start_1d .. :try_end_29} :catchall_190

    :try_start_29
    invoke-static {v15}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    move-object v4, v0

    const-wide/16 v9, 0x0

    iget-wide v11, v4, Landroid/system/StructStat;->st_size:J

    sget v13, Landroid/system/OsConstants;->PROT_READ:I

    sget v14, Landroid/system/OsConstants;->MAP_PRIVATE:I

    const-wide/16 v16, 0x0

    invoke-static/range {v9 .. v17}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8

    iget-wide v10, v4, Landroid/system/StructStat;->st_size:J

    long-to-int v0, v10

    add-int/lit16 v0, v0, 0x1000

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000

    move v10, v0

    new-array v0, v10, [B

    move-object v11, v0

    iget-wide v12, v4, Landroid/system/StructStat;->st_size:J

    invoke-static {v8, v9, v12, v13, v11}, Landroid/system/Os;->mincore(JJ[B)V

    sget-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_56
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_56} :catch_189
    .catchall {:try_start_29 .. :try_end_56} :catchall_181

    move-object v12, v0

    if-eqz v12, :cond_7a

    const/4 v0, 0x0

    :goto_5a
    if-ge v0, v10, :cond_67

    :try_start_5c
    aget-byte v13, v12, v0

    aget-byte v14, v11, v0

    and-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_67
    sget-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Landroid/system/ErrnoException; {:try_start_5c .. :try_end_6c} :catch_74
    .catchall {:try_start_5c .. :try_end_6c} :catchall_6d

    goto :goto_7f

    :catchall_6d
    move-exception v0

    move/from16 v17, v5

    move-object v4, v15

    move-object v5, v0

    goto/16 :goto_1e3

    :catch_74
    move-exception v0

    move/from16 v17, v5

    move-object v4, v15

    goto/16 :goto_19c

    :cond_7a
    :try_start_7a
    sget-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Landroid/system/ErrnoException; {:try_start_7a .. :try_end_7f} :catch_189
    .catchall {:try_start_7a .. :try_end_7f} :catchall_181

    :goto_7f
    if-nez p1, :cond_c7

    :try_start_81
    iget-wide v13, v4, Landroid/system/StructStat;->st_size:J

    invoke-static {v8, v9, v13, v14}, Landroid/system/Os;->munmap(JJ)V
    :try_end_86
    .catch Landroid/system/ErrnoException; {:try_start_81 .. :try_end_86} :catch_bf
    .catchall {:try_start_81 .. :try_end_86} :catchall_b6

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_b0

    :try_start_8c
    invoke-static {v15}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8f
    .catch Landroid/system/ErrnoException; {:try_start_8c .. :try_end_8f} :catch_92

    move/from16 v16, v2

    goto :goto_b2

    :catch_92
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    sget-object v13, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v2

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :cond_b0
    move/from16 v16, v2

    :cond_b2
    :goto_b2
    move/from16 v2, v16

    goto/16 :goto_1dd

    :catchall_b6
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v4, v15

    move-object v5, v0

    goto/16 :goto_1e3

    :catch_bf
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v4, v15

    goto/16 :goto_19c

    :cond_c7
    move/from16 v16, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_cc
    if-ge v0, v10, :cond_11f

    :try_start_ce
    aget-byte v14, v12, v0
    :try_end_d0
    .catch Landroid/system/ErrnoException; {:try_start_ce .. :try_end_d0} :catch_117
    .catchall {:try_start_ce .. :try_end_d0} :catchall_10e

    and-int/lit8 v14, v14, 0x1

    if-lez v14, :cond_dd

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v18, v4

    move/from16 v17, v5

    move-wide/from16 v19, v8

    goto :goto_105

    :cond_dd
    if-lez v13, :cond_ff

    sub-int v14, v0, v13

    mul-int/lit16 v14, v14, 0x1000

    move-object/from16 v18, v4

    move/from16 v17, v5

    int-to-long v4, v14

    add-long/2addr v4, v8

    mul-int/lit16 v14, v13, 0x1000

    move-wide/from16 v19, v8

    int-to-long v8, v14

    :try_start_ee
    invoke-static {v4, v5, v8, v9}, Landroid/system/Os;->mlock(JJ)V

    add-int/2addr v2, v13

    add-int v4, v16, v13

    const/4 v13, 0x0

    const/16 v5, 0x3200

    if-le v4, v5, :cond_fc

    move/from16 v16, v4

    goto :goto_125

    :cond_fc
    move/from16 v16, v4

    goto :goto_105

    :cond_ff
    move-object/from16 v18, v4

    move/from16 v17, v5

    move-wide/from16 v19, v8

    :goto_105
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v17

    move-object/from16 v4, v18

    move-wide/from16 v8, v19

    goto :goto_cc

    :catchall_10e
    move-exception v0

    move/from16 v17, v5

    move-object v5, v0

    move-object v4, v15

    move/from16 v2, v16

    goto/16 :goto_1e3

    :catch_117
    move-exception v0

    move/from16 v17, v5

    move-object v4, v15

    move/from16 v2, v16

    goto/16 :goto_19c

    :cond_11f
    move-object/from16 v18, v4

    move/from16 v17, v5

    move-wide/from16 v19, v8

    :goto_125
    mul-int/lit8 v4, v2, 0x64

    int-to-double v4, v4

    int-to-double v8, v10

    div-double/2addr v4, v8

    sget-object v8, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cached "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " with "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, "%"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catch Landroid/system/ErrnoException; {:try_start_ee .. :try_end_14d} :catch_17c
    .catchall {:try_start_ee .. :try_end_14d} :catchall_175

    nop

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_b2

    :try_start_154
    invoke-static {v15}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_157
    .catch Landroid/system/ErrnoException; {:try_start_154 .. :try_end_157} :catch_159

    :goto_157
    goto/16 :goto_b2

    :catch_159
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_157

    :catchall_175
    move-exception v0

    move-object v5, v0

    move-object v4, v15

    move/from16 v2, v16

    goto/16 :goto_1e3

    :catch_17c
    move-exception v0

    move-object v4, v15

    move/from16 v2, v16

    goto :goto_19c

    :catchall_181
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v5, v0

    move-object v4, v15

    goto :goto_1e3

    :catch_189
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v4, v15

    goto :goto_19c

    :catchall_190
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v5, v0

    goto :goto_1e3

    :catch_197
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    :goto_19c
    :try_start_19c
    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not pin file with error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catchall {:try_start_19c .. :try_end_1b6} :catchall_1e1

    nop

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1dd

    :try_start_1bd
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1c0
    .catch Landroid/system/ErrnoException; {:try_start_1bd .. :try_end_1c0} :catch_1c1

    :goto_1c0
    goto :goto_1dd

    :catch_1c1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c0

    :cond_1dd
    :goto_1dd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :catchall_1e1
    move-exception v0

    move-object v5, v0

    :goto_1e3
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_208

    :try_start_1e9
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1ec
    .catch Landroid/system/ErrnoException; {:try_start_1e9 .. :try_end_1ec} :catch_1ed

    goto :goto_208

    :catch_1ed
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    sget-object v8, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_208
    :goto_208
    throw v5

    :cond_209
    return-void
.end method
