.class public LOooO0O0/OooO0OO/OooO00o/OooO0Oo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooOo00:Ljava/lang/String; = "IotDeviceInfo"


# instance fields
.field private OooO:Ljava/lang/String;

.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:J

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:Ljava/lang/String;

.field private OooO0o:Ljava/lang/String;

.field private OooO0o0:I

.field private OooO0oO:Ljava/lang/String;

.field private OooO0oo:Ljava/lang/String;

.field private OooOO0:I

.field private OooOO0O:Ljava/lang/String;

.field private OooOO0o:Ljava/lang/String;

.field private OooOOO:I

.field private OooOOO0:Ljava/lang/String;

.field private OooOOOO:Ljava/lang/String;

.field private OooOOOo:I

.field private OooOOo:Ljava/lang/String;

.field private OooOOo0:Z

.field private OooOOoo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Ljava/lang/String;)LOooO0O0/OooO0OO/OooO00o/OooO0Oo;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0O0(Lorg/json/JSONObject;)LOooO0O0/OooO0OO/OooO00o/OooO0Oo;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IotDeviceInfo"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final OooO0O0(Lorg/json/JSONObject;)LOooO0O0/OooO0OO/OooO00o/OooO0Oo;
    .locals 3

    :try_start_0
    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;-><init>()V

    const-string v1, "did"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO00o:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0O0:J

    const-string v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0OO:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0Oo:Ljava/lang/String;

    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0o0:I

    const-string v1, "localip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0o:Ljava/lang/String;

    const-string v1, "mac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0oO:Ljava/lang/String;

    const-string v1, "ssid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0oo:Ljava/lang/String;

    const-string v1, "bssid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO:Ljava/lang/String;

    const-string v1, "rssi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0:I

    const-string v1, "longitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0O:Ljava/lang/String;

    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0o:Ljava/lang/String;

    const-string v1, "parent_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOO0:Ljava/lang/String;

    const-string v1, "show_mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOO:I

    const-string v1, "model"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOOO:Ljava/lang/String;

    const-string v1, "permitLevel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOOo:I

    const-string v1, "isOnline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOo0:Z

    const-string v1, "spec_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOo:Ljava/lang/String;

    const-string v1, "voice_ctrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOoo:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "IotDeviceInfo"

    const-string v1, "Error when create IotDeviceInfo"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOOO:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0oO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0O:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0oo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0oO:Ljava/lang/String;

    return-object p0
.end method

.method public OooOO0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0Oo:Ljava/lang/String;

    return-object p0
.end method

.method public OooOO0O()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOO0:Ljava/lang/String;

    return-object p0
.end method

.method public OooOO0o()I
    .locals 0

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOOo:I

    return p0
.end method

.method public OooOOO()I
    .locals 0

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0:I

    return p0
.end method

.method public OooOOO0()I
    .locals 0

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0o0:I

    return p0
.end method

.method public OooOOOO()I
    .locals 0

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOO:I

    return p0
.end method

.method public OooOOOo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOo:Ljava/lang/String;

    return-object p0
.end method

.method public OooOOo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0OO:Ljava/lang/String;

    return-object p0
.end method

.method public OooOOo0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0oo:Ljava/lang/String;

    return-object p0
.end method

.method public OooOOoo()J
    .locals 2

    iget-wide v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0O0:J

    return-wide v0
.end method

.method public OooOo()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0o()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOo0()Z
    .locals 0

    iget-boolean p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOo0:Z

    return p0
.end method

.method public OooOo00()I
    .locals 0

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOoo:I

    return p0
.end method

.method public OooOo0o()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "did"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO00o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "uid"

    iget-wide v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0O0:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "token"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0OO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0Oo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "pid"

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0o0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "localip"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mac"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0oO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ssid"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0oo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bssid"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "rssi"

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "longitude"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0O:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "latitude"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOO0o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "parent_id"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOO0:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "show_mode"

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "model"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOOO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "permitLevel"

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOOo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isOnline"

    iget-boolean v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOo0:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "spec_type"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "voice_ctrl"

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOOoo:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1, p0}, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooOo0O(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "IotDeviceInfo"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method
