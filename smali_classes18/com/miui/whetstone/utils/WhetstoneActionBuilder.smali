.class public Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
.super Ljava/lang/Object;
.source "WhetstoneActionBuilder.java"


# instance fields
.field private content:Lorg/json/JSONObject;

.field private department:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->department:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_a
    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_a
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_a
    return-object p0
.end method

.method public add(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_a
    return-object p0
.end method

.method public getAction()Lcom/miui/whetstone/WhetstoneAction;
    .registers 4

    new-instance v0, Lcom/miui/whetstone/WhetstoneAction;

    iget-object v1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->department:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/miui/whetstone/WhetstoneAction;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
