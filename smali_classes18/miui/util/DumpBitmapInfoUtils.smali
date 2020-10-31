.class public Lmiui/util/DumpBitmapInfoUtils;
.super Ljava/lang/Object;
.source "DumpBitmapInfoUtils.java"


# static fields
.field static final ENABLE:Z

.field static sBitmapThresholdSize:I

.field static sBitmapTitles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrProcess:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "DumpBitmapInfo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    :cond_12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBitmapInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 27

    move-object/from16 v1, p1

    sget-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    move v8, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v6, :cond_7d

    aget-object v9, v1, v0

    const-string v10, "--bitmap"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_27

    const-string v10, "-b"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    :cond_27
    const/4 v2, 0x1

    :cond_28
    const-string v10, "--exportbitmap"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_38

    const-string v10, "-e"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_39

    :cond_38
    const/4 v3, 0x1

    :cond_39
    const-string v10, "--nogc"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_42

    const/4 v4, 0x1

    :cond_42
    const-string v10, "--includepreload"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4b

    const/4 v5, 0x1

    :cond_4b
    const-string v10, "--recycle:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7a

    const-string v10, "--recycle:0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_6c

    const-string v10, "--recycle:0x"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_7a

    :cond_6c
    const-string v10, "--recycle:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_7d
    if-nez v2, :cond_82

    if-nez v3, :cond_82

    return-void

    :cond_82
    if-nez v4, :cond_87

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_87
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "system"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_c8

    :cond_a4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_exportbitmap/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_d0

    :cond_c8
    :goto_c8
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/system/_exportbitmap/"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    :goto_d0
    if-eqz v3, :cond_e6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_dc

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_e6

    :cond_dc
    :try_start_dc
    invoke-static {v6}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_e6

    :catch_e0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e6
    :goto_e6
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v9, p0

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v10}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v11, v0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    :try_start_f7
    sget-object v15, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v15
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_2e2

    :try_start_fa
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    sget-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_10f
    .catchall {:try_start_fa .. :try_end_10f} :catchall_2d6

    if-eqz v17, :cond_13f

    :try_start_111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    move-object/from16 v18, v17

    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-virtual {v7}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_12e

    move-object/from16 v1, v16

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12d
    .catchall {:try_start_111 .. :try_end_12d} :catchall_137

    goto :goto_130

    :cond_12e
    move-object/from16 v1, v16

    :goto_130
    move-object/from16 v16, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    goto :goto_10b

    :catchall_137
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    goto/16 :goto_2dc

    :cond_13f
    move-object/from16 v1, v16

    :try_start_141
    monitor-exit v15
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_2d6

    :try_start_142
    new-instance v0, Lmiui/util/DumpBitmapInfoUtils$1;

    invoke-direct {v0}, Lmiui/util/DumpBitmapInfoUtils$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v0, "All big bitmaps (debug.bitmap_threshold_size = %d k):\n"

    const/4 v7, 0x1

    new-array v15, v7, [Ljava/lang/Object;

    sget v16, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v11, v0, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    move-object v15, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_16d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_18e

    move-object/from16 v21, v1

    move/from16 v22, v2

    goto :goto_1ce

    :cond_18e
    const/4 v0, 0x0

    const/16 v20, 0x0

    move/from16 v7, v20

    :goto_193
    move/from16 v20, v0

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v0
    :try_end_199
    .catchall {:try_start_142 .. :try_end_199} :catchall_2e2

    if-ge v7, v0, :cond_1c2

    :try_start_19b
    invoke-virtual {v15, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object/from16 v21, v1

    invoke-static {v0}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1a7
    .catchall {:try_start_19b .. :try_end_1a7} :catchall_1ba

    move/from16 v22, v2

    move-object/from16 v2, v19

    if-ne v1, v2, :cond_1af

    const/4 v1, 0x1

    goto :goto_1ca

    :cond_1af
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v2

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    goto :goto_193

    :catchall_1ba
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    goto/16 :goto_2e8

    :cond_1c2
    move-object/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v2, v19

    move/from16 v1, v20

    :goto_1ca
    if-eqz v1, :cond_1d4

    if-nez v5, :cond_1d4

    :goto_1ce
    move-object/from16 v1, v21

    move/from16 v2, v22

    const/4 v7, 0x1

    goto :goto_16d

    :cond_1d4
    :try_start_1d4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0
    :try_end_1d8
    .catchall {:try_start_1d4 .. :try_end_1d8} :catchall_266

    move v7, v4

    move/from16 v19, v5

    int-to-long v4, v0

    add-long/2addr v12, v4

    add-int/lit8 v14, v14, 0x1

    :try_start_1df
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v1}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1ff
    .catchall {:try_start_1df .. :try_end_1ff} :catchall_2de

    if-eqz v3, :cond_245

    :try_start_201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_214} :catch_23b
    .catchall {:try_start_201 .. :try_end_214} :catchall_2de

    move-object/from16 v20, v4

    const/4 v4, 0x1

    :try_start_217
    invoke-static {v2, v5, v4, v1}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v23, v0

    const/16 v0, 0x64

    invoke-virtual {v2, v5, v0, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_238} :catch_239
    .catchall {:try_start_217 .. :try_end_238} :catchall_2de

    goto :goto_247

    :catch_239
    move-exception v0

    goto :goto_23e

    :catch_23b
    move-exception v0

    move-object/from16 v20, v4

    :goto_23e
    :try_start_23e
    invoke-virtual {v0, v11}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_247

    :cond_245
    move-object/from16 v20, v4

    :goto_247
    if-eqz v8, :cond_257

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, v8, :cond_257

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "  now recycled."

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_257
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(C)V

    move v4, v7

    move/from16 v5, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    const/4 v7, 0x1

    goto/16 :goto_16d

    :catchall_266
    move-exception v0

    move v7, v4

    move/from16 v19, v5

    goto/16 :goto_2e8

    :cond_26c
    move-object/from16 v21, v1

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    const-string v0, "Total count: %d, size: %dM\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-wide/16 v4, 0x400

    div-long v23, v12, v4

    div-long v23, v23, v4

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-eqz v3, :cond_2c8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Export bitmap. Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DumpBitmapInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Export bitmaps finished. Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c8
    const-string v0, "\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2d0
    .catchall {:try_start_23e .. :try_end_2d0} :catchall_2de

    nop

    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    nop

    return-void

    :catchall_2d6
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    :goto_2dc
    :try_start_2dc
    monitor-exit v15
    :try_end_2dd
    .catchall {:try_start_2dc .. :try_end_2dd} :catchall_2e0

    :try_start_2dd
    throw v0
    :try_end_2de
    .catchall {:try_start_2dd .. :try_end_2de} :catchall_2de

    :catchall_2de
    move-exception v0

    goto :goto_2e8

    :catchall_2e0
    move-exception v0

    goto :goto_2dc

    :catchall_2e2
    move-exception v0

    move/from16 v22, v2

    move v7, v4

    move/from16 v19, v5

    :goto_2e8
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    throw v0
.end method

.method private static formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 8

    const-string v0, "0x%8x %,6dk %dx%d %s %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, ""

    if-eqz p2, :cond_3a

    const-string v3, "preload"

    goto :goto_3b

    :cond_3a
    move-object v3, v2

    :goto_3b
    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v3, 0x5

    if-nez p1, :cond_42

    goto :goto_46

    :cond_42
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_46
    aput-object v2, v1, v3

    const-string v2, "0x%8x %,6dk %dx%d %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mBitmap"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    return-object v3

    :cond_26
    const-string v2, "NinePatchState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mNinePatch"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/NinePatch;

    if-nez v3, :cond_44

    return-object v0

    :cond_44
    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    return-object v0

    :cond_49
    return-object v0

    :catchall_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;
    .registers 11

    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_7

    return-object v0

    :cond_7
    const/16 v1, 0xf0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0xf0

    if-lez v2, :cond_25

    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_25

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    const/16 v5, 0x5f

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isTrackingNeeded(Landroid/graphics/Bitmap;)Z
    .registers 3

    sget v0, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_18

    const/16 v0, 0x64

    const-string v1, "debug.bitmap_threshold_size"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    :cond_18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    if-lt v0, v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method

.method public static putBitmap(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 4

    sget-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p0, :cond_8

    return-void

    :cond_8
    :try_start_8
    invoke-static {p0}, Lmiui/util/DumpBitmapInfoUtils;->isTrackingNeeded(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1c

    :try_start_12
    sget-object v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_20

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_20
    return-void
.end method
