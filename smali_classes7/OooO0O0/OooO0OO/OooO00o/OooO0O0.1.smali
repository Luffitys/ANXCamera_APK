.class public LOooO0O0/OooO0OO/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0O0:Ljava/lang/String; = "CameraResource"

.field private static final OooO0OO:Ljava/lang/String; = "P2pStream"


# instance fields
.field OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)LOooO0O0/OooO0OO/OooO00o/OooO0O0;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CameraResource"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO0O0(Lorg/json/JSONObject;)LOooO0O0/OooO0OO/OooO00o/OooO0O0;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Lorg/json/JSONObject;)LOooO0O0/OooO0OO/OooO00o/OooO0O0;
    .locals 2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooO0O0;-><init>()V

    const-string v1, "cameraControl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, LOooO0O0/OooO0OO/OooO00o/OooO00o;

    invoke-direct {v1, v0, p0}, LOooO0O0/OooO0OO/OooO00o/OooO00o;-><init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Lorg/json/JSONObject;)V

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public OooO()V
    .locals 2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO00o;

    const-string v1, "CMD_STOP_AUDIO"

    invoke-direct {v0, p0, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;-><init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Ljava/lang/String;)V

    iput-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    return-void
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0OO(LOooO0O0/OooO0OO/OooO00o/OooO00o;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 0

    const-string p0, "P2pStream"

    return-object p0
.end method

.method public OooO0o()V
    .locals 2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO00o;

    const-string v1, "CMD_START_AUDIO"

    invoke-direct {v0, p0, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;-><init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Ljava/lang/String;)V

    iput-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    return-void
.end method

.method public OooO0o0()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o(LOooO0O0/OooO0OO/OooO00o/OooO00o;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public OooO0oO(I)V
    .locals 2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO00o;

    const-string v1, "CMD_START_VIDEO"

    invoke-direct {v0, p0, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;-><init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Ljava/lang/String;)V

    iput-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    invoke-static {v0, p1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0(LOooO0O0/OooO0OO/OooO00o/OooO00o;I)I

    return-void
.end method

.method public OooO0oo(I)V
    .locals 2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO00o;

    const-string v1, "CMD_START_VIDEOANDAUDIO"

    invoke-direct {v0, p0, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;-><init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Ljava/lang/String;)V

    iput-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    invoke-static {v0, p1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0(LOooO0O0/OooO0OO/OooO00o/OooO00o;I)I

    return-void
.end method

.method public OooOO0()V
    .locals 2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO00o;

    const-string v1, "CMD_STOP_VIDEO"

    invoke-direct {v0, p0, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;-><init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Ljava/lang/String;)V

    iput-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    return-void
.end method

.method public OooOO0O()V
    .locals 2

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO00o;

    const-string v1, "CMD_STOP_VIDEOANDAUDIO"

    invoke-direct {v0, p0, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o;-><init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Ljava/lang/String;)V

    iput-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    return-void
.end method

.method public OooOO0o()Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    if-eqz v1, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooO00o;

    invoke-virtual {p0}, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0Oo()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "cameraControl"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CameraResource"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public OooOOO0()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LOooO0O0/OooO0OO/OooO00o/OooO0O0;->OooOO0o()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
