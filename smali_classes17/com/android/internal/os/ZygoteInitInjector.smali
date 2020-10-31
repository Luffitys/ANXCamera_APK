.class Lcom/android/internal/os/ZygoteInitInjector;
.super Ljava/lang/Object;
.source "ZygoteInitInjector.java"


# static fields
.field private static final PRELOADED_MIUI_CLASSES:Ljava/lang/String; = "preloaded-miui-classes"

.field private static final PRELOADED_MIUI_CLASSES_FILE:Ljava/lang/String; = "/system/etc/preloaded-miui-classes"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SECOND_ZYGOTE_NAME:Ljava/lang/String; = "zygote_secondary"

.field private static final TAG:Ljava/lang/String; = "ZygoteInitInjector"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static processName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static preloadMiuiClasses()V
    .registers 18

    const-string v1, "PreloadDexCaches"

    const-string v2, "ZygoteInitInjector"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    const-string v4, "/system/etc/preloaded-miui-classes"

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_f} :catch_1bd

    move-object v4, v0

    nop

    const-string v0, "Preloading classes..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v7

    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v8

    const/4 v9, 0x0

    const-string v10, "Failed to drop root"

    const/4 v11, 0x0

    if-nez v7, :cond_3c

    if-nez v8, :cond_3c

    const/16 v0, 0x270f

    :try_start_2c
    invoke-static {v11, v0}, Landroid/system/Os;->setregid(II)V

    invoke-static {v11, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_32} :catch_35

    nop

    const/4 v9, 0x1

    goto :goto_3c

    :catch_35
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3c
    :goto_3c
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v12

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    :try_start_46
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x100

    invoke-direct {v0, v15, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v11, v0

    const/4 v0, 0x0

    move v15, v0

    :goto_55
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    if-eqz v0, :cond_118

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    const-string v0, "#"

    move-object/from16 v13, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_110

    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    move v14, v7

    move/from16 v17, v8

    goto/16 :goto_113

    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PreloadClass "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_8b} :catch_16c
    .catchall {:try_start_46 .. :try_end_8b} :catchall_167

    move v14, v7

    move/from16 v17, v8

    const-wide/16 v7, 0x4000

    :try_start_90
    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_165
    .catchall {:try_start_90 .. :try_end_93} :catchall_199

    const/4 v0, 0x0

    const/4 v7, 0x1

    :try_start_95
    invoke-static {v13, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_95 .. :try_end_98} :catch_ee
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_95 .. :try_end_98} :catch_cd
    .catchall {:try_start_95 .. :try_end_98} :catchall_9b

    add-int/lit8 v15, v15, 0x1

    goto :goto_106

    :catchall_9b
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    :try_start_9e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v7, v0, Ljava/lang/Error;

    if-nez v7, :cond_c9

    instance-of v7, v0, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_c3

    move-object v7, v0

    check-cast v7, Ljava/lang/RuntimeException;

    throw v7

    :cond_c3
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_c9
    move-object v7, v0

    check-cast v7, Ljava/lang/Error;

    throw v7

    :catch_cd
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_106

    :catch_ee
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class not found for preloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_106
    const-wide/16 v7, 0x4000

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    move v7, v14

    move/from16 v8, v17

    goto/16 :goto_55

    :cond_110
    move v14, v7

    move/from16 v17, v8

    :goto_113
    move v7, v14

    move/from16 v8, v17

    goto/16 :goto_55

    :cond_118
    move v14, v7

    move/from16 v17, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...preloaded "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " classes in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_142} :catch_165
    .catchall {:try_start_9e .. :try_end_142} :catchall_199

    nop

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v3, v12}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-wide/16 v7, 0x4000

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v9, :cond_198

    const/4 v1, 0x0

    :try_start_157
    invoke-static {v1, v1}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v1, v1}, Landroid/system/Os;->setregid(II)V
    :try_end_15d
    .catch Landroid/system/ErrnoException; {:try_start_157 .. :try_end_15d} :catch_15e

    goto :goto_190

    :catch_15e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_165
    move-exception v0

    goto :goto_170

    :catchall_167
    move-exception v0

    move v14, v7

    move/from16 v17, v8

    goto :goto_19a

    :catch_16c
    move-exception v0

    move v14, v7

    move/from16 v17, v8

    :goto_170
    :try_start_170
    const-string v7, "Error reading /system/etc/preloaded-miui-classes."

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_175
    .catchall {:try_start_170 .. :try_end_175} :catchall_199

    nop

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v3, v12}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-wide/16 v7, 0x4000

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v9, :cond_198

    const/4 v1, 0x0

    :try_start_18a
    invoke-static {v1, v1}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v1, v1}, Landroid/system/Os;->setregid(II)V
    :try_end_190
    .catch Landroid/system/ErrnoException; {:try_start_18a .. :try_end_190} :catch_191

    :goto_190
    goto :goto_198

    :catch_191
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_198
    :goto_198
    return-void

    :catchall_199
    move-exception v0

    :goto_19a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v3, v12}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-wide/16 v7, 0x4000

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v9, :cond_1bc

    const/4 v1, 0x0

    :try_start_1ae
    invoke-static {v1, v1}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v1, v1}, Landroid/system/Os;->setregid(II)V
    :try_end_1b4
    .catch Landroid/system/ErrnoException; {:try_start_1ae .. :try_end_1b4} :catch_1b5

    goto :goto_1bc

    :catch_1b5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1bc
    :goto_1bc
    throw v0

    :catch_1bd
    move-exception v0

    const-string v1, "Couldn\'t find /system/etc/preloaded-miui-classes."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static preloadMiuiResources(Landroid/content/res/Resources;)V
    .registers 10

    sget-object v0, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    const-string/jumbo v1, "zygote_secondary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ZygoteInitInjector"

    if-eqz v0, :cond_14

    const-string/jumbo v0, "skip the second zygote 32 preload miui resource"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v0, Lmiui/R$array;->preloaded_drawables:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-class v4, Lcom/android/internal/os/ZygoteInit;

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const-string/jumbo v7, "preloadDrawables"

    invoke-static {v4, v7, v5, v6}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_3c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...preloaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " miui sdk resources in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/ZygoteInitInjector;->preloadMiuiClasses()V

    return-void
.end method
