.class public Lcom/miui/internal/analytics/XiaomiServer;
.super Ljava/lang/Object;
.source "XiaomiServer.java"


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/analytics/XiaomiServer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVER_URL:Ljava/lang/String; = "http://tracking.miui.com/tracks"

.field private static final SERVER_URL_GLOBAL:Ljava/lang/String; = "https://tracking.miui.com/tracks"

.field private static final SIGNITURE:Ljava/lang/String; = "s"

.field private static final SUBJECT:Ljava/lang/String; = "miui_apps"

.field private static final TAG:Ljava/lang/String; = "XIAOMI_SERVER"

.field private static final TYPE:Ljava/lang/String; = "t"

.field private static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/analytics/XiaomiServer$1;

    invoke-direct {v0}, Lcom/miui/internal/analytics/XiaomiServer$1;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/XiaomiServer;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/XiaomiServer$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiServer;-><init>()V

    return-void
.end method

.method public static fromParamListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/internal/net/KeyValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_77

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/net/KeyValuePair;

    :try_start_19
    invoke-virtual {v3}, Lcom/miui/internal/net/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    goto :goto_d

    :cond_20
    invoke-virtual {v3}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/miui/internal/net/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_40} :catch_42

    nop

    goto :goto_d

    :catch_42
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to convert from param list to string: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XIAOMI_SERVER"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pair: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/internal/net/KeyValuePair;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_77
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_87

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v1

    :cond_87
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/miui/internal/analytics/XiaomiServer;
    .registers 1

    sget-object v0, Lcom/miui/internal/analytics/XiaomiServer;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/XiaomiServer;

    return-object v0
.end method

.method public static readResponseContent(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    const/16 v2, 0x400

    :try_start_9
    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_c
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v4, v6

    if-lez v6, :cond_18

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c

    :cond_18
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_33
    .catchall {:try_start_9 .. :try_end_23} :catchall_31

    if-eqz p0, :cond_2a

    :try_start_25
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception v5

    :cond_2a
    :goto_2a
    nop

    :try_start_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v5

    :goto_30
    return-object v2

    :catchall_31
    move-exception v1

    goto :goto_47

    :catch_33
    move-exception v1

    :try_start_34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    if-eqz p0, :cond_3e

    :try_start_39
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v1

    :cond_3e
    :goto_3e
    nop

    :try_start_3f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    :goto_42
    goto :goto_45

    :catch_43
    move-exception v1

    goto :goto_42

    :goto_45
    const/4 v1, 0x0

    return-object v1

    :goto_47
    if-eqz p0, :cond_4e

    :try_start_49
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception v2

    :cond_4e
    :goto_4e
    nop

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_54

    :catch_53
    move-exception v2

    :goto_54
    throw v1
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public send(Ljava/util/Map;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "XIAOMI_SERVER"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_7

    return v1

    :cond_7
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget-boolean v6, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_22

    const-string v6, "https://tracking.miui.com/tracks"

    move-object v5, v6

    goto :goto_25

    :cond_22
    const-string v6, "http://tracking.miui.com/tracks"

    move-object v5, v6

    :goto_25
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v2, v6

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Lcom/miui/internal/net/KeyValuePair;

    const-string v8, "t"

    const-string v9, "miui_apps"

    invoke-direct {v7, v8, v9}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/miui/internal/net/KeyValuePair;

    const-string v8, "value"

    invoke-direct {v7, v8, v4}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/miui/internal/net/KeyValuePair;

    const-string v8, "s"

    invoke-static {v6}, Lcom/miui/internal/analytics/SaltGenerate;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "POST"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/internal/analytics/XiaomiServer;->fromParamListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_87

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9
    :try_end_75
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_75} :catch_d4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_75} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_75} :catch_ba
    .catchall {:try_start_7 .. :try_end_75} :catchall_b8

    const/4 v10, 0x0

    :try_start_76
    array-length v11, v8

    invoke-virtual {v9, v8, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_81

    :try_start_7d
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    goto :goto_87

    :catchall_81
    move-exception v10

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    nop

    throw v10

    :cond_87
    :goto_87
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_b0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/internal/analytics/XiaomiServer;->readResponseContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "status"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ok"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ad

    const/4 v0, 0x1

    move v1, v0

    goto :goto_b0

    :cond_ad
    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7d .. :try_end_b0} :catch_d4
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_b0} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_b0} :catch_ba
    .catchall {:try_start_7d .. :try_end_b0} :catchall_b8

    :cond_b0
    :goto_b0
    if-eqz v2, :cond_e1

    :try_start_b2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    :goto_b5
    goto :goto_e1

    :catch_b6
    move-exception v0

    goto :goto_b5

    :catchall_b8
    move-exception v0

    goto :goto_e2

    :catch_ba
    move-exception v3

    :try_start_bb
    const-string v4, "Exception catched when sending data"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_b8

    nop

    if-eqz v2, :cond_e1

    :try_start_c3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_b6

    goto :goto_b5

    :catch_c7
    move-exception v3

    :try_start_c8
    const-string v4, "IOException catched when sending data"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_b8

    nop

    if-eqz v2, :cond_e1

    :try_start_d0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_b6

    goto :goto_b5

    :catch_d4
    move-exception v3

    :try_start_d5
    const-string v4, "UnsupportedEncodingException catched when sending data"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d5 .. :try_end_da} :catchall_b8

    nop

    if-eqz v2, :cond_e1

    :try_start_dd
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_b6

    goto :goto_b5

    :cond_e1
    :goto_e1
    return v1

    :goto_e2
    if-eqz v2, :cond_e9

    :try_start_e4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_e9

    :catch_e8
    move-exception v3

    :cond_e9
    :goto_e9
    throw v0
.end method
