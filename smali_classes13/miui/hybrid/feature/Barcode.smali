.class public Lmiui/hybrid/feature/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# static fields
.field private static final ACTION_SCAN_BARCODE:Ljava/lang/String; = "scan"

.field private static final INTENT_ACTION_SCAN_BARCODE:Ljava/lang/String; = "android.intent.action.scanbarcode"

.field private static final INTENT_CATEGORY_SYSAPP_TOOL:Ljava/lang/String; = "miui.intent.category.SYSAPP_TOOL"

.field private static final INTENT_EXTRA_IS_BACKTO_THIRDAPP:Ljava/lang/String; = "isBackToThirdApp"

.field private static final INTENT_EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final INTENT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final REQUEST_SCAN_BARCODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "REQUEST_SCAN_BARCODE"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lmiui/hybrid/feature/Barcode;->REQUEST_SCAN_BARCODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Lmiui/hybrid/feature/Barcode;->REQUEST_SCAN_BARCODE:I

    return v0
.end method

.method static synthetic access$100(Lmiui/hybrid/feature/Barcode;Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Barcode;->makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private makeResult(Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, -0x1

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_16
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_21
    return-object v4
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .registers 4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan"

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
    .registers 9

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xcc

    if-nez v0, :cond_16

    new-instance v0, Lmiui/hybrid/Response;

    const-string v2, "no such action"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_16
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.scanbarcode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "miui.intent.category.SYSAPP_TOOL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    const-string v5, "isBackToThirdApp"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_4c

    new-instance v4, Lmiui/hybrid/Response;

    const-string v6, "can\'t find barcode scanner activity"

    invoke-direct {v4, v1, v6}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    move-object v1, v4

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-object v5

    :cond_4c
    new-instance v1, Lmiui/hybrid/feature/Barcode$1;

    invoke-direct {v1, p0, v0, p1}, Lmiui/hybrid/feature/Barcode$1;-><init>(Lmiui/hybrid/feature/Barcode;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    sget v4, Lmiui/hybrid/feature/Barcode;->REQUEST_SCAN_BARCODE:I

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v5
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
