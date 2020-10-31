.class public Lmiui/hybrid/feature/Mipay;
.super Ljava/lang/Object;
.source "Mipay.java"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final ACTION_MIPAY_COUNTER:Ljava/lang/String; = "com.xiaomi.action.MIPAY_PAY_ORDER"

.field private static final ACTION_PAY:Ljava/lang/String; = "pay"

.field private static final ERROR_CODE_INVALID:I = -0x1

.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_ORDER:Ljava/lang/String; = "order"

.field private static final KEY_ORDER_INFO:Ljava/lang/String; = "orderInfo"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final PACKAGE_MIPAY_WALLET:Ljava/lang/String; = "com.mipay.wallet"

.field private static final REQUEST_MIPAY:I = 0x1335188


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmiui/hybrid/feature/Mipay;Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Mipay;->makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 7

    const-string v0, "result"

    const-string v1, "message"

    const-string v2, "code"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, -0x1

    :try_start_c
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2d} :catch_2e

    :cond_2d
    goto :goto_32

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_32
    return-object v3
.end method

.method private pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/hybrid/Response;
    .registers 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xcc

    if-eqz v0, :cond_10

    new-instance v0, Lmiui/hybrid/Response;

    const-string v2, "order cannot be empty"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.action.MIPAY_PAY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.mipay.wallet"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_2f

    new-instance v2, Lmiui/hybrid/Response;

    const-string v3, "mipay feature not available"

    invoke-direct {v2, v1, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_2f
    const-string v1, "order"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const v1, 0x1335188

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .registers 4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .registers 8

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xcc

    const-string v2, "no such action"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_16
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmiui/hybrid/feature/Mipay$1;

    invoke-direct {v2, p0, v0, p1}, Lmiui/hybrid/feature/Mipay$1;-><init>(Lmiui/hybrid/feature/Mipay;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V

    invoke-virtual {v0, v2}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 v3, 0x0

    :try_start_27
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getRawParams()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "orderInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_36} :catch_38

    move-object v3, v5

    goto :goto_3c

    :catch_38
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3c
    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lmiui/hybrid/feature/Mipay;->pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/hybrid/Response;

    move-result-object v4

    return-object v4
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
