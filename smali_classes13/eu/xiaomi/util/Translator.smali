.class abstract Leu/xiaomi/util/Translator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/xiaomi/util/Translator$State;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2e
    :goto_2e
    const/4 v4, 0x3

    new-array v4, v4, [C

    fill-array-data v4, :array_62

    move v5, v2

    :goto_35
    if-ge v3, v0, :cond_5d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v5, :cond_4a

    const/16 v7, 0x20

    if-eq v6, v7, :cond_4a

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v2

    goto :goto_4d

    :cond_4a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4d
    array-length v7, v4

    move v8, v2

    :goto_4f
    if-ge v8, v7, :cond_5a

    aget-char v9, v4, v8

    if-ne v6, v9, :cond_57

    const/4 v5, 0x1

    goto :goto_5a

    :cond_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_62
    .array-data 2
        0x2es
        0x3fs
        0x21s
    .end array-data
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Leu/xiaomi/util/Translator$State;)V
    .registers 19

    move-object/from16 v0, p2

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_199

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_199

    if-eqz v0, :cond_199

    iget-object v1, v0, Leu/xiaomi/util/Translator$State;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_199

    :cond_1a
    iget-object v0, v0, Leu/xiaomi/util/Translator$State;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_23

    return-void

    :cond_23
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_2d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_3c
    if-ge v6, v1, :cond_199

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "q="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v6

    :goto_56
    add-int/lit8 v8, v7, 0x1

    if-ge v8, v1, :cond_7f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x3

    const/16 v11, 0x2710

    if-gt v9, v11, :cond_7f

    const-string v7, "&q="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v8

    goto :goto_56

    :cond_7f
    sub-int/2addr v7, v6

    add-int/2addr v7, v2

    if-ne v7, v2, :cond_8a

    const-string v9, "&q="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :cond_8a
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://translate.google.com/translate_a/t?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "&sl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "&tl="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&hl="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&ie="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "UTF-8"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&oe="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "UTF-8"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&client="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "at"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&v="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    const/16 v10, 0x4e20

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v10, "User-Agent"

    invoke-static {}, Leu/xiaomi/util/Translator;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    const/16 v10, 0x1000

    new-array v13, v10, [B

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v15, 0x0

    :try_start_10c
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_115} :catch_186
    .catchall {:try_start_10c .. :try_end_115} :catchall_183

    :goto_115
    :try_start_115
    invoke-virtual {v2, v13}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_120

    invoke-virtual {v14, v13, v5, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_115

    :cond_120
    const-string v9, "UTF-8"

    invoke-virtual {v14, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_126} :catch_16d
    .catchall {:try_start_115 .. :try_end_126} :catchall_169

    :try_start_126
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_129} :catch_186
    .catchall {:try_start_126 .. :try_end_129} :catchall_183

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_133

    return-void

    :cond_133
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eq v9, v7, :cond_13f

    return-void

    :cond_13f
    move v7, v5

    :goto_140
    if-ge v7, v9, :cond_165

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v13, v10, Lorg/json/JSONArray;

    if-eqz v13, :cond_151

    check-cast v10, Lorg/json/JSONArray;

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_153

    :cond_151
    check-cast v10, Ljava/lang/String;

    :goto_153
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_162

    add-int v13, v6, v7

    invoke-static {v10}, Leu/xiaomi/util/Translator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v13, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_162
    add-int/lit8 v7, v7, 0x1

    goto :goto_140

    :cond_165
    move v6, v8

    const/4 v2, 0x1

    goto/16 :goto_3c

    :catchall_169
    move-exception v0

    move-object v1, v0

    move-object v3, v15

    goto :goto_173

    :catch_16d
    move-exception v0

    move-object v1, v0

    :try_start_16f
    throw v1
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_170

    :catchall_170
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    :goto_173
    if-eqz v3, :cond_17f

    :try_start_175
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_175 .. :try_end_178} :catch_179
    .catchall {:try_start_175 .. :try_end_178} :catchall_183

    goto :goto_182

    :catch_179
    move-exception v0

    move-object v2, v0

    :try_start_17b
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_182

    :cond_17f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :goto_182
    throw v1
    :try_end_183
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_183} :catch_186
    .catchall {:try_start_17b .. :try_end_183} :catchall_183

    :catchall_183
    move-exception v0

    move-object v1, v0

    goto :goto_189

    :catch_186
    move-exception v0

    move-object v15, v0

    :try_start_188
    throw v15
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_183

    :goto_189
    if-eqz v15, :cond_195

    :try_start_18b
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_18e} :catch_18f

    goto :goto_198

    :catch_18f
    move-exception v0

    move-object v2, v0

    invoke-virtual {v15, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_198

    :cond_195
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_198
    throw v1

    :cond_199
    :goto_199
    return-void
.end method

.method protected static a()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Translator"

    const-string v1, "Cannot run translator on UI thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    sget-object v0, Leu/xiaomi/util/Translator;->a:Ljava/lang/String;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleTranslate/5.22.0.RC04.206832067 {Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/xiaomi/util/Translator;->a:Ljava/lang/String;

    :cond_28
    sget-object v0, Leu/xiaomi/util/Translator;->a:Ljava/lang/String;

    return-object v0
.end method
