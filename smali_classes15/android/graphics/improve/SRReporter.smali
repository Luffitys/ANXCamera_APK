.class public Landroid/graphics/improve/SRReporter;
.super Ljava/lang/Object;
.source "SRReporter.java"


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "3"

.field public static final ACTION_FAIL:Ljava/lang/String; = "4"

.field public static final ACTION_IMPROVE:Ljava/lang/String; = "1"

.field public static final ACTION_IMPROVE_TIME:Ljava/lang/String; = "5"

.field public static final ACTION_OPEN:Ljava/lang/String; = "2"

.field public static final STR_ACTION:Ljava/lang/String; = "action"

.field public static final STR_DEAL_TIME:Ljava/lang/String; = "deal_time"

.field public static final STR_FAIL_PKG:Ljava/lang/String; = "fail_pkg"

.field public static final STR_FAIL_REASON:Ljava/lang/String; = "fail_reason"

.field public static final STR_FAIL_VERSION:Ljava/lang/String; = "fail_version"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseJson()Lorg/json/JSONObject;
    .registers 3

    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deal_time"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fail_pkg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fail_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fail_reason"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_25
    return-object v1
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v2

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "unknow"

    return-object v0
.end method

.method private static report(Lorg/json/JSONObject;)V
    .registers 3

    new-instance v0, Landroid/graphics/improve/SRReporter$1;

    invoke-direct {v0, p0}, Landroid/graphics/improve/SRReporter$1;-><init>(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/graphics/improve/SRReporter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static reportClose(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "fail_pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_18
    return-void
.end method

.method public static reportFailure(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    const-string v1, "fail_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail_version"

    invoke-static {p0}, Landroid/graphics/improve/SRReporter;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail_reason"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public static reportImprove()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_13
    return-void
.end method

.method public static reportImproveTime(J)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deal_time"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1c
    return-void
.end method

.method public static reportOpen(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "fail_pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_18
    return-void
.end method
