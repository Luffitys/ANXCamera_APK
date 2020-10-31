.class public Lorg/egret/plugin/mi/android/util/launcher/ZipClass;
.super Ljava/lang/Object;
.source "ZipClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ZipClass"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z
    .registers 23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "ZipClass"

    const/4 v4, 0x0

    if-eqz v1, :cond_230

    if-nez v2, :cond_f

    goto/16 :goto_230

    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "fail to mkdir "

    if-nez v5, :cond_4c

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_4c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    :cond_4b
    return v4

    :cond_4c
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_4f
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_1dc
    .catchall {:try_start_4f .. :try_end_54} :catchall_1d9

    move-object v5, v9

    :try_start_55
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->size()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v11

    :cond_5e
    :goto_5e
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_62} :catch_1d6
    .catchall {:try_start_55 .. :try_end_62} :catchall_1d2

    if-eqz v12, :cond_189

    const-string v12, "zip thread is cancelled"

    if-eqz v3, :cond_93

    :try_start_68
    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v13

    invoke-virtual {v13}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v13

    if-nez v13, :cond_93

    invoke-interface {v3, v12}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_75} :catch_1dc
    .catchall {:try_start_68 .. :try_end_75} :catchall_1d9

    nop

    nop

    :try_start_77
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    if-eqz v7, :cond_7f

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7f
    if-eqz v8, :cond_84

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_84} :catch_85

    :cond_84
    goto :goto_92

    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_92

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    :cond_92
    :goto_92
    return v4

    :cond_93
    add-int/lit8 v10, v10, 0x1

    if-eqz v3, :cond_9a

    :try_start_97
    invoke-interface {v3, v10, v9}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onProgress(II)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_1dc
    .catchall {:try_start_97 .. :try_end_9a} :catchall_1d9

    :cond_9a
    :try_start_9a
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/zip/ZipEntry;

    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v2, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_ad} :catch_1d6
    .catchall {:try_start_9a .. :try_end_ad} :catchall_1d2

    if-eqz v15, :cond_101

    :try_start_af
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_5e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_e3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_e3} :catch_1dc
    .catchall {:try_start_af .. :try_end_e3} :catchall_1d9

    :cond_e3
    nop

    nop

    :try_start_e5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    if-eqz v7, :cond_ed

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_ed
    if-eqz v8, :cond_f2

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f2} :catch_f3

    :cond_f2
    goto :goto_100

    :catch_f3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_100

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    :cond_100
    :goto_100
    return v4

    :cond_101
    move-object/from16 v16, v5

    :try_start_103
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_107} :catch_184
    .catchall {:try_start_103 .. :try_end_107} :catchall_17d

    long-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v15, v16

    :try_start_10b
    invoke-virtual {v15, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v7, v16

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v1

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_11b
    move-object/from16 v16, v6

    move/from16 v17, v9

    const/4 v6, 0x0

    invoke-virtual {v7, v2, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move/from16 v18, v9

    const/4 v1, -0x1

    if-eq v9, v1, :cond_169

    if-eqz v3, :cond_156

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v1

    if-nez v1, :cond_156

    invoke-interface {v3, v12}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_138} :catch_1cf
    .catchall {:try_start_10b .. :try_end_138} :catchall_1cb

    nop

    nop

    :try_start_13a
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    if-eqz v7, :cond_142

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_142
    nop

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_146} :catch_147

    goto :goto_154

    :catch_147
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_154

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    :cond_154
    :goto_154
    const/4 v1, 0x0

    return v1

    :cond_156
    move/from16 v1, v18

    const/4 v6, 0x0

    :try_start_159
    invoke-virtual {v8, v2, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v5, v1

    if-eqz v3, :cond_162

    invoke-interface {v3, v5, v4}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onFileProgress(II)V

    :cond_162
    move-object/from16 v6, v16

    move/from16 v9, v17

    const/16 v1, 0x400

    goto :goto_11b

    :cond_169
    move/from16 v1, v18

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v9, v17

    const/4 v4, 0x0

    goto/16 :goto_5e

    :catchall_17d
    move-exception v0

    move-object/from16 v15, v16

    move-object v1, v0

    move-object v5, v15

    goto/16 :goto_20e

    :catch_184
    move-exception v0

    move-object/from16 v15, v16

    move-object v5, v15

    goto :goto_1dd

    :cond_189
    move-object v15, v5

    move/from16 v17, v9

    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success to unzip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1ac

    invoke-interface/range {p3 .. p3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onSuccess()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_1ac} :catch_1cf
    .catchall {:try_start_159 .. :try_end_1ac} :catchall_1cb

    :cond_1ac
    nop

    nop

    :try_start_1ae
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    if-eqz v7, :cond_1b6

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_1b6
    if-eqz v8, :cond_1bb

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1bb} :catch_1bc

    :cond_1bb
    goto :goto_1c9

    :catch_1bc
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_1c9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    :cond_1c9
    :goto_1c9
    const/4 v0, 0x1

    return v0

    :catchall_1cb
    move-exception v0

    move-object v1, v0

    move-object v5, v15

    goto :goto_20e

    :catch_1cf
    move-exception v0

    move-object v5, v15

    goto :goto_1dd

    :catchall_1d2
    move-exception v0

    move-object v15, v5

    move-object v1, v0

    goto :goto_20e

    :catch_1d6
    move-exception v0

    move-object v15, v5

    goto :goto_1dd

    :catchall_1d9
    move-exception v0

    move-object v1, v0

    goto :goto_20e

    :catch_1dc
    move-exception v0

    :goto_1dd
    move-object v1, v0

    :try_start_1de
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_1ea

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_1ea
    .catchall {:try_start_1de .. :try_end_1ea} :catchall_1d9

    :cond_1ea
    nop

    if-eqz v5, :cond_1f3

    :try_start_1ed
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_1f3

    :catch_1f1
    move-exception v0

    goto :goto_1fe

    :cond_1f3
    :goto_1f3
    if-eqz v7, :cond_1f8

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_1f8
    if-eqz v8, :cond_20b

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1fd} :catch_1f1

    goto :goto_20b

    :goto_1fe
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_20c

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_20c

    :cond_20b
    :goto_20b
    nop

    :cond_20c
    :goto_20c
    const/4 v2, 0x0

    return v2

    :goto_20e
    if-eqz v5, :cond_216

    :try_start_210
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_216

    :catch_214
    move-exception v0

    goto :goto_221

    :cond_216
    :goto_216
    if-eqz v7, :cond_21b

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_21b
    if-eqz v8, :cond_22e

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_220} :catch_214

    goto :goto_22e

    :goto_221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_22f

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_22f

    :cond_22e
    :goto_22e
    nop

    :cond_22f
    :goto_22f
    throw v1

    :cond_230
    :goto_230
    const-string v1, "src or dstRoot may be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public unzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)V
    .registers 6

    if-nez p3, :cond_9

    const-string v0, "ZipClass"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z

    return-void
.end method

.method public unzip(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z

    move-result v0

    return v0
.end method
