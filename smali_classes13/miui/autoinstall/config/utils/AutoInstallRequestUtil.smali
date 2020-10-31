.class public Lmiui/autoinstall/config/utils/AutoInstallRequestUtil;
.super Ljava/lang/Object;
.source "AutoInstallRequestUtil.java"


# static fields
.field private static final DEFAULT_CONNECT_TIME_OUT:I = 0x7d0

.field private static final DEFAULT_READ_TIME_OUT:I = 0x7d0

.field private static final KEY_RESPONSE_CODE:Ljava/lang/String; = "code"

.field private static final KEY_RESPONSE_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_RESPONSE_SUCCESS:Ljava/lang/String; = "Success"

.field private static final RESPONSE_CODE_SUCCESS:I = 0x0

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "https://control.preload.xiaomi.com/rom_reset/apks?"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFileSize(Ljava/lang/String;)J
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    move-object v0, v1

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_2a
    .catchall {:try_start_1 .. :try_end_21} :catchall_28

    int-to-long v1, v1

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_27
    return-wide v1

    :catchall_28
    move-exception v1

    goto :goto_36

    :catch_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_35
    return-wide v2

    :goto_36
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3b
    throw v1
.end method

.method public static requestAppInfo(Lmiui/autoinstall/config/entity/RequestEntity;)Lmiui/autoinstall/config/entity/ResponseAppInfo;
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://control.preload.xiaomi.com/rom_reset/apks?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/autoinstall/config/entity/RequestEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_17
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v1, v3

    const/16 v3, 0x7d0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_92

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_51
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_5c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_5c
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "message"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_92

    const-string v9, "Success"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_92

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/autoinstall/config/entity/ResponseAppInfo;->json2Entity(Ljava/lang/String;)Lmiui/autoinstall/config/entity/ResponseAppInfo;

    move-result-object v9
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_83} :catch_a4
    .catchall {:try_start_17 .. :try_end_83} :catchall_a2

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_88
    nop

    :try_start_89
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :goto_91
    return-object v9

    :cond_92
    if-eqz v1, :cond_97

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_97
    if-eqz v2, :cond_b3

    :try_start_99
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    :goto_9c
    goto :goto_b3

    :catch_9d
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c

    :catchall_a2
    move-exception v3

    goto :goto_b5

    :catch_a4
    move-exception v3

    :try_start_a5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a2

    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ad
    if-eqz v2, :cond_b3

    :try_start_af
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_9d

    goto :goto_9c

    :cond_b3
    :goto_b3
    const/4 v3, 0x0

    return-object v3

    :goto_b5
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ba
    if-eqz v2, :cond_c4

    :try_start_bc
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_c4

    :catch_c0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_c4
    :goto_c4
    throw v3
.end method
