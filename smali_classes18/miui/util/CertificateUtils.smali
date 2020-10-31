.class public Lmiui/util/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# static fields
.field private static final DEBUG_JAR:Z

.field private static final TAG:Ljava/lang/String;

.field private static sReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/util/CertificateUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Ljava/io/File;Ljava/util/Set;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;)Z"
        }
    .end annotation

    const-class v1, Lmiui/util/CertificateUtils;

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    monitor-enter v1

    :try_start_7
    sget-object v3, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_15

    const/4 v4, 0x0

    sput-object v4, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v2, v4

    :cond_15
    if-nez v2, :cond_22

    const/16 v4, 0x2000

    new-array v4, v4, [B

    move-object v2, v4

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_255

    const/4 v4, 0x0

    :try_start_24
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v5, v6, :cond_43

    const-class v5, Ljava/util/jar/JarFile;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarFile;

    goto :goto_60

    :cond_43
    const-class v5, Ljava/util/jar/JarFile;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarFile;

    :goto_60
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    :goto_65
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_118

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/JarEntry;

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_78

    goto :goto_65

    :cond_78
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "META-INF/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_85

    goto :goto_65

    :cond_85
    invoke-static {v5, v9, v2}, Lmiui/util/CertificateUtils;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v11

    if-nez v11, :cond_ba

    sget-object v1, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JarFile "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has no certificates at entry "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; ignoring!"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    return v4

    :cond_ba
    if-nez v6, :cond_be

    move-object v6, v11

    goto :goto_115

    :cond_be
    const/4 v12, 0x0

    :goto_bf
    array-length v13, v6

    if-ge v12, v13, :cond_115

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_c4
    array-length v15, v11

    if-ge v14, v15, :cond_db

    aget-object v15, v6, v12

    if-eqz v15, :cond_d7

    aget-object v15, v6, v12

    aget-object v8, v11, v14

    invoke-virtual {v15, v8}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    const/4 v13, 0x1

    goto :goto_db

    :cond_d7
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_c4

    :cond_db
    :goto_db
    if-eqz v13, :cond_e6

    array-length v8, v6

    array-length v14, v11

    if-eq v8, v14, :cond_e2

    goto :goto_e6

    :cond_e2
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_bf

    :cond_e6
    :goto_e6
    sget-object v1, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "JarFile "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has mismatched certificates at entry "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "; ignoring!"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    return v4

    :cond_115
    :goto_115
    const/4 v8, 0x1

    goto/16 :goto_65

    :cond_118
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    monitor-enter v1
    :try_end_11c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_24 .. :try_end_11c} :catch_236
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_11c} :catch_217
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_11c} :catch_1f8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_11c} :catch_1d9
    .catch Ljava/lang/InstantiationException; {:try_start_24 .. :try_end_11c} :catch_1ba
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_11c} :catch_19b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_11c} :catch_17c

    :try_start_11c
    sput-object v3, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    monitor-exit v1
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_163

    if-eqz v6, :cond_141

    :try_start_121
    array-length v1, v6

    if-lez v1, :cond_141

    array-length v1, v6

    const/4 v8, 0x0

    :goto_126
    if-ge v8, v1, :cond_13b

    new-instance v9, Landroid/content/pm/Signature;

    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/pm/Signature;-><init>([B)V
    :try_end_133
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_121 .. :try_end_133} :catch_236
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_133} :catch_217
    .catch Ljava/lang/RuntimeException; {:try_start_121 .. :try_end_133} :catch_1f8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_121 .. :try_end_133} :catch_1d9
    .catch Ljava/lang/InstantiationException; {:try_start_121 .. :try_end_133} :catch_1ba
    .catch Ljava/lang/IllegalAccessException; {:try_start_121 .. :try_end_133} :catch_19b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_121 .. :try_end_133} :catch_17c

    move-object/from16 v10, p1

    :try_start_135
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_126

    :cond_13b
    move-object/from16 v10, p1

    nop

    nop

    const/4 v1, 0x1

    return v1

    :cond_141
    move-object/from16 v10, p1

    sget-object v1, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JarFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has no certificates; ignoring!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_135 .. :try_end_162} :catch_177
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_162} :catch_174
    .catch Ljava/lang/RuntimeException; {:try_start_135 .. :try_end_162} :catch_171
    .catch Ljava/lang/NoSuchMethodException; {:try_start_135 .. :try_end_162} :catch_16f
    .catch Ljava/lang/InstantiationException; {:try_start_135 .. :try_end_162} :catch_16d
    .catch Ljava/lang/IllegalAccessException; {:try_start_135 .. :try_end_162} :catch_16b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_135 .. :try_end_162} :catch_169

    return v4

    :catchall_163
    move-exception v0

    move-object/from16 v10, p1

    :goto_166
    move-object v8, v0

    :try_start_167
    monitor-exit v1
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_17a

    :try_start_168
    throw v8
    :try_end_169
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_168 .. :try_end_169} :catch_177
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_169} :catch_174
    .catch Ljava/lang/RuntimeException; {:try_start_168 .. :try_end_169} :catch_171
    .catch Ljava/lang/NoSuchMethodException; {:try_start_168 .. :try_end_169} :catch_16f
    .catch Ljava/lang/InstantiationException; {:try_start_168 .. :try_end_169} :catch_16d
    .catch Ljava/lang/IllegalAccessException; {:try_start_168 .. :try_end_169} :catch_16b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_168 .. :try_end_169} :catch_169

    :catch_169
    move-exception v0

    goto :goto_17f

    :catch_16b
    move-exception v0

    goto :goto_19e

    :catch_16d
    move-exception v0

    goto :goto_1bd

    :catch_16f
    move-exception v0

    goto :goto_1dc

    :catch_171
    move-exception v0

    goto/16 :goto_1fb

    :catch_174
    move-exception v0

    goto/16 :goto_21a

    :catch_177
    move-exception v0

    goto/16 :goto_239

    :catchall_17a
    move-exception v0

    goto :goto_166

    :catch_17c
    move-exception v0

    move-object/from16 v10, p1

    :goto_17f
    move-object v1, v0

    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_19b
    move-exception v0

    move-object/from16 v10, p1

    :goto_19e
    move-object v1, v0

    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_1ba
    move-exception v0

    move-object/from16 v10, p1

    :goto_1bd
    move-object v1, v0

    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_1d9
    move-exception v0

    move-object/from16 v10, p1

    :goto_1dc
    move-object v1, v0

    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_1f8
    move-exception v0

    move-object/from16 v10, p1

    :goto_1fb
    move-object v1, v0

    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_217
    move-exception v0

    move-object/from16 v10, p1

    :goto_21a
    move-object v1, v0

    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_236
    move-exception v0

    move-object/from16 v10, p1

    :goto_239
    move-object v1, v0

    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catchall_255
    move-exception v0

    move-object/from16 v10, p1

    :goto_258
    move-object v3, v0

    :try_start_259
    monitor-exit v1
    :try_end_25a
    .catchall {:try_start_259 .. :try_end_25a} :catchall_25b

    throw v3

    :catchall_25b
    move-exception v0

    goto :goto_258
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, -0x2

    return v0

    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    move v4, v2

    :goto_25
    if-ge v4, v3, :cond_2f

    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    return v2

    :cond_36
    const/4 v2, -0x3

    return v2
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 9

    const-string v0, " in "

    const-string v1, "Exception reading "

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_e
    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    goto :goto_e

    :cond_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_21} :catch_22

    :cond_21
    return-object v2

    :catch_22
    move-exception v3

    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    :catch_46
    move-exception v3

    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_6a
    return-object v2
.end method
