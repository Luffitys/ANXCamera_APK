.class public Lmiui/autoinstall/config/entity/ResponseAppInfo;
.super Ljava/lang/Object;
.source "ResponseAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static json2Entity(Ljava/lang/String;)Lmiui/autoinstall/config/entity/ResponseAppInfo;
    .registers 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lmiui/autoinstall/config/entity/ResponseAppInfo;

    invoke-direct {v2}, Lmiui/autoinstall/config/entity/ResponseAppInfo;-><init>()V

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmiui/autoinstall/config/entity/ResponseAppInfo;->message:Ljava/lang/String;

    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lmiui/autoinstall/config/entity/ResponseAppInfo;->code:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "data"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v5, :cond_6c

    new-instance v7, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;

    invoke-direct {v7}, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;-><init>()V

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "apkMd5"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkMd5:Ljava/lang/String;

    const-string v9, "packageName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageName:Ljava/lang/String;

    const-string v9, "packageVersionCode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->packageVersionCode:Ljava/lang/String;

    const-string v9, "apkName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->apkName:Ljava/lang/String;

    const-string v9, "cdnPath"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;->cdnPath:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_6c
    iput-object v3, v2, Lmiui/autoinstall/config/entity/ResponseAppInfo;->data:Ljava/util/List;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_6e} :catch_6f

    return-object v2

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method
