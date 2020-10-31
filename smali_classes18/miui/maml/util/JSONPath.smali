.class public Lmiui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 13

    const-string v0, "JSONPath"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    if-eqz v3, :cond_15

    goto :goto_17

    :cond_15
    iget-object v3, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    :goto_17
    if-nez v3, :cond_1a

    return-object v2

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    :try_start_1b
    array-length v5, v1

    if-ge v4, v5, :cond_74

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_70

    :cond_27
    const/4 v6, -0x1

    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_48

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    :cond_48
    instance-of v9, v3, Lorg/json/JSONObject;

    if-eqz v9, :cond_5a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5a

    move-object v9, v3

    check-cast v9, Lorg/json/JSONObject;

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    :cond_5a
    instance-of v9, v3, Lorg/json/JSONArray;

    if-eqz v9, :cond_69

    move-object v9, v3

    check-cast v9, Lorg/json/JSONArray;

    if-ne v6, v8, :cond_64

    goto :goto_74

    :cond_64
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    :cond_69
    if-eqz v3, :cond_73

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_6d} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_6d} :catch_75

    if-ne v3, v8, :cond_70

    goto :goto_73

    :cond_70
    :goto_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_73
    :goto_73
    return-object v2

    :cond_74
    :goto_74
    return-object v3

    :catch_75
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :catch_7e
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_87
    return-object v2
.end method
