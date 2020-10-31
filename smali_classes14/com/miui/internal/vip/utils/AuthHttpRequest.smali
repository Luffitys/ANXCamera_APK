.class public Lcom/miui/internal/vip/utils/AuthHttpRequest;
.super Ljava/lang/Object;
.source "AuthHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;,
        Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SDK:Ljava/lang/String; = "com.xiaomi.accountsdk"

.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final AccountSdkDf:Ldalvik/system/DexFile;

.field private static final CLS_AUTH_FAIL_EXCEPT:Ljava/lang/String; = "com.xiaomi.accountsdk.request.AuthenticationFailureException"

.field private static final CLS_CRYPT_CODER:Ljava/lang/String; = "com.xiaomi.accountsdk.utils.CryptCoder"

.field private static final CLS_EXTEND_AUTH_TOKEN:Ljava/lang/String; = "com.xiaomi.accountsdk.account.data.ExtendedAuthToken"

.field private static final CLS_SECURE_REQUEST:Ljava/lang/String; = "com.xiaomi.accountsdk.request.SecureRequest"

.field private static final CLS_STRING_CONTENT:Ljava/lang/String; = "com.xiaomi.accountsdk.request.SimpleRequest$StringContent"

.field private static final ClsAuthFailExcept:Ljava/lang/Class;

.field private static final ClsCryptCoder:Ljava/lang/Class;

.field private static final ClsExtendAuthToken:Ljava/lang/Class;

.field private static final ClsSecureRequest:Ljava/lang/Class;

.field private static final ClsStringContent:Ljava/lang/Class;

.field private static final ERR_AUTH_TOKEN:Ljava/lang/String; = "fail to get auth token"

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final MAX_RETRY:I = 0x5

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final PARAM_ANDROID_VER:Ljava/lang/String; = "android_version"

.field private static final PARAM_COUNTRY:Ljava/lang/String; = "country"

.field private static final PARAM_IMEI:Ljava/lang/String; = "imei"

.field private static final PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PARAM_MIUI_VERSION:Ljava/lang/String; = "miui_version"

.field private static final PARAM_NONE:[Ljava/lang/Class;

.field private static final PARAM_PRODUCT:Ljava/lang/String; = "product"

.field private static final PARAM_REQUEST:[Ljava/lang/Class;

.field private static final PARAM_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final PARAM_REQUEST_TIME:Ljava/lang/String; = "requestTime"

.field private static final PARAM_SINGLE_STRING:[Ljava/lang/Class;

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final SERVER_ALPHA:Ljava/lang/String; = "api-alpha.vip.miui.com"

.field private static final SERVER_DEV:Ljava/lang/String; = "api.vip.miui.com"

.field private static final SERVER_TONGJI:Ljava/lang/String; = "api.vip.miui.com"

.field private static final SERVER_TONGJI_ALPHA:Ljava/lang/String; = "tongji-alpha.vip.miui.com"

.field private static final SID:Ljava/lang/String; = "miui_vip"

.field private static final SID_A:Ljava/lang/String; = "miui_vip_a"

.field private static final TIMEOUT:I = 0x2710

.field public static final TYPE_DATA:Ljava/lang/String; = "data"

.field public static final TYPE_TONGJI:Ljava/lang/String; = "tongji"

.field private static final sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

.field private static sClassLoaded:Z


# instance fields
.field public final command:Ljava/lang/String;

.field public final isNormal:Z

.field public final method:Ljava/lang/String;

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_NONE:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    sput-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_SINGLE_STRING:[Ljava/lang/Class;

    sput-boolean v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sClassLoaded:Z

    new-instance v2, Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;-><init>(Lcom/miui/internal/vip/utils/AuthHttpRequest$1;)V

    sput-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1e
    new-instance v8, Ldalvik/system/DexFile;

    const-string v9, "system/framework/cloud-common.jar"

    invoke-direct {v8, v9}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_27

    move-object v7, v8

    goto :goto_31

    :catch_27
    move-exception v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v0

    const-string v10, "failed to open cloud-common, %s"

    invoke-static {v10, v9}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_31
    sput-object v7, Lcom/miui/internal/vip/utils/AuthHttpRequest;->AccountSdkDf:Ldalvik/system/DexFile;

    :try_start_33
    const-string v8, "com.xiaomi.accountsdk.account.data.ExtendedAuthToken"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v7, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v2, v8

    const-string v8, "com.xiaomi.accountsdk.request.AuthenticationFailureException"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v7, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v3, v8

    const-string v8, "com.xiaomi.accountsdk.request.SecureRequest"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v7, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v4, v8

    const-string v8, "com.xiaomi.accountsdk.utils.CryptCoder"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v7, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v6, v8

    const-string v8, "com.xiaomi.accountsdk.request.SimpleRequest$StringContent"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v7, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v5, v8

    sput-boolean v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sClassLoaded:Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_62} :catch_63

    goto :goto_6d

    :catch_63
    move-exception v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v0

    const-string v10, "failed to load class, %s"

    invoke-static {v10, v9}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6d
    sput-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    sput-object v3, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsAuthFailExcept:Ljava/lang/Class;

    sput-object v4, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsSecureRequest:Ljava/lang/Class;

    sput-object v5, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsStringContent:Ljava/lang/Class;

    sput-object v6, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsCryptCoder:Ljava/lang/Class;

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    const-class v0, Ljava/util/Map;

    aput-object v0, v8, v1

    const/4 v0, 0x2

    const-class v1, Ljava/util/Map;

    aput-object v1, v8, v0

    const/4 v0, 0x3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const-class v1, Ljava/lang/String;

    aput-object v1, v8, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsCryptCoder:Ljava/lang/Class;

    aput-object v1, v8, v0

    const/4 v0, 0x6

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v8, v0

    sput-object v8, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_REQUEST:[Ljava/lang/Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->command:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->method:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isNormal:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_13
    if-eqz p5, :cond_29

    array-length v1, p5

    if-ge v0, v1, :cond_29

    add-int/lit8 v1, v0, 0x1

    array-length v2, p5

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    aget-object v3, p5, v0

    aget-object v4, p5, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v0, v1, 0x1

    goto :goto_13

    :cond_29
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    const-string v2, "data"

    const-string v3, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/vip/utils/AuthHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ldalvik/system/DexFile;
    .registers 1

    sget-object v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->AccountSdkDf:Ldalvik/system/DexFile;

    return-object v0
.end method

.method private static addAdditionalParams(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    if-nez v0, :cond_9

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    :cond_9
    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/internal/vip/utils/DeviceHelper;->MIUI_VERSION:Ljava/lang/String;

    const-string v2, "miui_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getXiaomiVipVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/internal/vip/utils/DeviceHelper;->PRODUCT:Ljava/lang/String;

    const-string v2, "product"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/internal/vip/utils/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imei"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "android_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getAuthToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getAuthToken %s"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_52

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_52

    :cond_e
    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    :try_start_1d
    invoke-virtual/range {v6 .. v12}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v5

    invoke-interface {v5}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "authtoken"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1d .. :try_end_2d} :catch_40
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1d .. :try_end_2d} :catch_37
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_49

    :catch_37
    move-exception v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_48

    :catch_40
    move-exception v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_48
    nop

    :goto_49
    return-object v1

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userId is not only digits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    :goto_52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    const-string v2, "account = %s, sid = %s, failed to get auth token"

    invoke-static {v2, v0}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getCookies(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "encrypted_user_id"

    invoke-virtual {p1, p2, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const-string v2, "cUserId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serviceToken"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getExtendedAuthToken(Ljava/lang/String;)Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;

    invoke-direct {v0}, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;-><init>()V

    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    sget-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_SINGLE_STRING:[Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    const-string v5, "parse"

    invoke-static {v4, v1, v5, v2, v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    const-string v3, "security"

    invoke-static {v1, v2, v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->security:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    const-string v3, "authToken"

    invoke-static {v1, v2, v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->authToken:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->authToken:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->security:Ljava/lang/String;

    if-nez v2, :cond_39

    goto :goto_3a

    :cond_39
    return-object v0

    :cond_3a
    :goto_3a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get auth token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4b

    const-string v4, "/null authToken"

    goto :goto_4d

    :cond_4b
    const-string v4, "parse authToken failed"

    :goto_4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getRequestId()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isXiaomiVipAlpha()Z

    move-result v0

    const-string v1, "tongji"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "api.vip.miui.com"

    if-eqz v1, :cond_14

    if-eqz v0, :cond_12

    const-string v2, "tongji-alpha.vip.miui.com"

    :cond_12
    move-object v1, v2

    goto :goto_19

    :cond_14
    if-eqz v0, :cond_18

    const-string v2, "api-alpha.vip.miui.com"

    :cond_18
    move-object v1, v2

    :goto_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    iget-boolean v2, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isNormal:Z

    if-eqz v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_46
    :goto_46
    return-object v1
.end method

.method private getSid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isXiaomiVipAlpha()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "miui_vip_a"

    goto :goto_b

    :cond_9
    const-string v0, "miui_vip"

    :goto_b
    return-object v0
.end method

.method private static getXiaomiVipVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "com.xiaomi.vip"

    invoke-static {v0}, Lcom/miui/internal/vip/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v1

    :cond_b
    const-string v1, ""

    return-object v1
.end method

.method private static isXiaomiVipAlpha()Z
    .registers 3

    const-string v0, "com.xiaomi.vip"

    invoke-static {v0}, Lcom/miui/internal/vip/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private queryWithAccount(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "AuthHttpRequest.queryWithAccount return null for there is no valid account"

    invoke-static {v3, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_14
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getAuthToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    return-object v1

    :cond_2a
    :try_start_2a
    invoke-direct {p0, v4}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getExtendedAuthToken(Ljava/lang/String;)Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;

    move-result-object v5

    iget-object v6, v5, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->authToken:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v6}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getCookies(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v5, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->security:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->requestWithUser(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_3a} :catch_3b

    return-object v1

    :catch_3b
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5e

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsAuthFailExcept:Ljava/lang/Class;

    invoke-static {v7, v8}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5e

    const/4 v7, 0x5

    if-eq v3, v7, :cond_5d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5d

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_5d
    throw v5

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method private requestWithUser(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    invoke-static {v1}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->addAdditionalParams(Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsSecureRequest:Ljava/lang/Class;

    sget-object v12, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_REQUEST:[Ljava/lang/Class;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    iget-object v13, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    aput-object v13, v7, v9

    aput-object p2, v7, v6

    aput-object v10, v7, v5

    aput-object p3, v7, v4

    aput-object v11, v7, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const-string v2, "getAsString"

    invoke-static {v11, v1, v2, v12, v7}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5e

    :cond_3e
    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsSecureRequest:Ljava/lang/Class;

    sget-object v12, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_REQUEST:[Ljava/lang/Class;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    iget-object v13, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    aput-object v13, v7, v9

    aput-object p2, v7, v6

    aput-object v10, v7, v5

    aput-object p3, v7, v4

    aput-object v11, v7, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const-string v2, "postAsString"

    invoke-static {v11, v1, v2, v12, v7}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_5e
    if-eqz v1, :cond_6f

    sget-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsStringContent:Ljava/lang/Class;

    sget-object v3, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_NONE:[Ljava/lang/Class;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "getBody"

    invoke-static {v1, v2, v5, v3, v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_6f
    return-object v11
.end method


# virtual methods
.method public queryAsString()Ljava/lang/String;
    .registers 10

    const-string v0, "queryAsString failed, %s"

    sget-boolean v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sClassLoaded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->type:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->command:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-direct {p0, v4, v5}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->queryWithAccount(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/miui/internal/vip/protocol/ErrResult;

    invoke-static {v5, v6}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/vip/protocol/ErrResult;

    if-eqz v6, :cond_3e

    iget v7, v6, Lcom/miui/internal/vip/protocol/ErrResult;->code:I

    if-lez v7, :cond_3e

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v6, Lcom/miui/internal/vip/protocol/ErrResult;->err:Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-static {v0, v7}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3d} :catch_3f

    return-object v2

    :cond_3e
    return-object v5

    :catch_3f
    move-exception v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    return-object v2
.end method
