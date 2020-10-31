.class public Lorg/egret/plugin/mi/android/util/launcher/NetClass;
.super Ljava/lang/Object;
.source "NetClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TIME_OUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 15

    const-string v0, "fail to close"

    if-eqz p1, :cond_16a

    if-nez p3, :cond_8

    goto/16 :goto_16a

    :cond_8
    :try_start_8
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_d} :catch_15c

    nop

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_11
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v2, v5

    if-nez v2, :cond_4e

    if-eqz p4, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_30} :catch_117
    .catchall {:try_start_11 .. :try_end_30} :catchall_115

    :cond_30
    if-eqz v2, :cond_38

    :try_start_32
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_38

    :catch_36
    move-exception v5

    goto :goto_43

    :cond_38
    :goto_38
    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_3d
    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_42} :catch_36

    goto :goto_4c

    :goto_43
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_4d

    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_4d

    :cond_4c
    :goto_4c
    nop

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    const/16 v5, 0x7530

    :try_start_50
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-eqz p2, :cond_9e

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_94

    if-eqz p4, :cond_76

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to open post: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_76} :catch_117
    .catchall {:try_start_50 .. :try_end_76} :catchall_115

    :cond_76
    if-eqz v2, :cond_7e

    :try_start_78
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7e

    :catch_7c
    move-exception v5

    goto :goto_89

    :cond_7e
    :goto_7e
    if-eqz v3, :cond_83

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_83
    if-eqz v4, :cond_92

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_88} :catch_7c

    goto :goto_92

    :goto_89
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_93

    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_93

    :cond_92
    :goto_92
    nop

    :cond_93
    :goto_93
    return-void

    :cond_94
    :try_start_94
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_9e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_cb

    if-eqz p4, :cond_ad

    const-string v5, "response code is HTTP_OK"

    invoke-interface {p4, v5}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_ad} :catch_117
    .catchall {:try_start_94 .. :try_end_ad} :catchall_115

    :cond_ad
    if-eqz v2, :cond_b5

    :try_start_af
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b5

    :catch_b3
    move-exception v5

    goto :goto_c0

    :cond_b5
    :goto_b5
    if-eqz v3, :cond_ba

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_ba
    if-eqz v4, :cond_c9

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_bf} :catch_b3

    goto :goto_c9

    :goto_c0
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_ca

    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_ca

    :cond_c9
    :goto_c9
    nop

    :cond_ca
    :goto_ca
    return-void

    :cond_cb
    :try_start_cb
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v4, v7

    const/16 v7, 0x400

    new-array v7, v7, [B

    :cond_d9
    :goto_d9
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    if-lez v8, :cond_f8

    if-eqz p4, :cond_ed

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v8

    invoke-virtual {v8}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v8

    if-nez v8, :cond_ed

    goto :goto_f8

    :cond_ed
    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v6, v9

    if-eqz p4, :cond_d9

    invoke-interface {p4, v6, v5}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onProgress(II)V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_f7} :catch_117
    .catchall {:try_start_cb .. :try_end_f7} :catchall_115

    goto :goto_d9

    :cond_f8
    :goto_f8
    if-eqz v2, :cond_100

    :try_start_fa
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_100

    :catch_fe
    move-exception v5

    goto :goto_10b

    :cond_100
    :goto_100
    if-eqz v3, :cond_105

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_105
    if-eqz v4, :cond_114

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_10a} :catch_fe

    goto :goto_114

    :goto_10b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_113

    :goto_110
    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    :cond_113
    goto :goto_13d

    :cond_114
    :goto_114
    goto :goto_13d

    :catchall_115
    move-exception v5

    goto :goto_13e

    :catch_117
    move-exception v5

    :try_start_118
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_124

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v6}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_124
    .catchall {:try_start_118 .. :try_end_124} :catchall_115

    :cond_124
    if-eqz v2, :cond_12c

    :try_start_126
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_12c

    :catch_12a
    move-exception v5

    goto :goto_137

    :cond_12c
    :goto_12c
    if-eqz v3, :cond_131

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_131
    if-eqz v4, :cond_114

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_136} :catch_12a

    goto :goto_114

    :goto_137
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_113

    goto :goto_110

    :goto_13d
    return-void

    :goto_13e
    if-eqz v2, :cond_146

    :try_start_140
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_146

    :catch_144
    move-exception v6

    goto :goto_151

    :cond_146
    :goto_146
    if-eqz v3, :cond_14b

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_14b
    if-eqz v4, :cond_15a

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_150} :catch_144

    goto :goto_15a

    :goto_151
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_15b

    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_15b

    :cond_15a
    :goto_15a
    nop

    :cond_15b
    :goto_15b
    throw v5

    :catch_15c
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    if-eqz p4, :cond_169

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    :cond_169
    return-void

    :cond_16a
    :goto_16a
    const-string v0, "NetTool"

    const-string v1, "url, out may be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 9

    const-string v0, "net thread is cancelled"

    if-eqz p3, :cond_24

    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p4, :cond_23

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_23

    :cond_20
    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V

    :cond_23
    :goto_23
    goto :goto_4b

    :cond_24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, p2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p4, :cond_4b

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_4b

    :cond_3f
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p4, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    goto :goto_59

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_59

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method public getRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_19

    return-object v2

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method

.method public writeResponseToFile(Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 5

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void

    :cond_a
    :goto_a
    return-void
.end method
