.class public Landroid/os/updater/ValidateChecker;
.super Ljava/lang/Object;
.source "ValidateChecker.java"


# static fields
.field private static final JSON_CODE:Ljava/lang/String; = "code"

.field private static final JSON_DATA:Ljava/lang/String; = "data"

.field private static final REQUEST_DEFAULT:I = -0x64

.field private static final REQUEST_FAILED:I = 0x7d1

.field private static final REQUEST_STRING_DEFAULT:Ljava/lang/String; = ""

.field private static final REQUEST_SUCCESS:I = 0x7d0

.field private static final SALT:Ljava/lang/String; = "32d2b7bb-cb24-3c25-baae-978332b8866e"

.field private static final TAG:Ljava/lang/String; = "ValidateChecker"

.field private static final VALIDATE_URL:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMd5:Ljava/lang/String;

.field private mPkgFile:Ljava/io/File;

.field private mProcessed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/updater/UrlUtil;->UPDATE_PROTOCOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/updater/UrlUtil;->UPDATE_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/v1/gota/validate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/updater/ValidateChecker;->VALIDATE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/updater/ValidateChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/updater/ValidateChecker;->mPkgFile:Ljava/io/File;

    iput-boolean p3, p0, Landroid/os/updater/ValidateChecker;->mProcessed:Z

    iput-object p4, p0, Landroid/os/updater/ValidateChecker;->mMd5:Ljava/lang/String;

    return-void
.end method

.method private getParams(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bWl1aW90YXZhbGlkZWQxMQ=="

    invoke-static {v0, p1}, Landroid/os/updater/HttpUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/os/updater/ValidateChecker;->mContext:Landroid/content/Context;

    const-string v3, "32d2b7bb-cb24-3c25-baae-978332b8866e"

    invoke-static {v2, v3}, Landroid/os/updater/CheckerUtils;->getAndroidId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "t: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ValidateChecker"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v5, "q"

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "ts"

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/updater/MD5;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "n"

    invoke-virtual {v4, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "sid"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4
.end method

.method private getValidateJsonString()Ljava/lang/String;
    .registers 14

    invoke-static {}, Landroid/os/updater/CheckerUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/updater/CheckerUtils;->getCodebaseSimplify()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/updater/CheckerUtils;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/updater/CheckerUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/updater/CheckerUtils;->getRegion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/os/updater/ValidateChecker;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/updater/CheckerUtils;->getBranchCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/updater/CheckerUtils;->getRomZone()I

    move-result v6

    const-string v7, ""

    iget-object v8, p0, Landroid/os/updater/ValidateChecker;->mPkgFile:Ljava/io/File;

    const-string v9, "ValidateChecker"

    if-eqz v8, :cond_50

    iget-boolean v8, p0, Landroid/os/updater/ValidateChecker;->mProcessed:Z

    if-eqz v8, :cond_35

    iget-object v8, p0, Landroid/os/updater/ValidateChecker;->mMd5:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_35

    iget-object v7, p0, Landroid/os/updater/ValidateChecker;->mMd5:Ljava/lang/String;

    goto :goto_3b

    :cond_35
    iget-object v8, p0, Landroid/os/updater/ValidateChecker;->mPkgFile:Ljava/io/File;

    invoke-static {v8}, Landroid/os/updater/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    :goto_3b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Local file MD5: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_50
    const-string/jumbo v8, "mPkgFile: is null"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v10, "d"

    invoke-interface {v8, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "c"

    invoke-interface {v8, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "sn"

    invoke-interface {v8, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "v"

    invoke-interface {v8, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "r"

    invoke-interface {v8, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "b"

    invoke-interface {v8, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "pkg"

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :try_start_87
    const-string/jumbo v11, "zone"

    invoke-virtual {v10, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception v11

    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    :goto_92
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isDebug()Z

    move-result v11

    if-eqz v11, :cond_b0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getValidateJsonString: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private parseResultFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_5c

    move-object v0, v1

    nop

    const/16 v1, -0x64

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseResultFromString: code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ValidateChecker"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x7d0

    const-string v4, ""

    if-eq v1, v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseResultFromString: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_43
    const-string v2, "data"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    const-string/jumbo v4, "parseResultFromString: data is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    const-string v3, "bWl1aW90YXZhbGlkZWQxMQ=="

    invoke-static {v3, v2}, Landroid/os/updater/HttpUtils;->decodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public checkValidate()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/updater/ValidateChecker;->getValidateJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/updater/ValidateChecker;->getParams(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    sget-object v2, Landroid/os/updater/ValidateChecker;->VALIDATE_URL:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/os/updater/HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/HashMap;Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/updater/ValidateChecker;->parseResultFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
