.class public LOooO0O0/OooO0OO/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO:Ljava/lang/String; = "CMD_STOP_VIDEOANDAUDIO"

.field public static final OooO0Oo:Ljava/lang/String; = "CMD_START_VIDEOANDAUDIO"

.field public static final OooO0o:Ljava/lang/String; = "CMD_START_AUDIO"

.field public static final OooO0o0:Ljava/lang/String; = "CMD_START_VIDEO"

.field public static final OooO0oO:Ljava/lang/String; = "CMD_STOP_AUDIO"

.field public static final OooO0oo:Ljava/lang/String; = "CMD_STOP_VIDEO"

.field public static final OooOO0:I = 0x0

.field public static final OooOO0O:I = 0x1

.field public static final OooOO0o:I = 0x2

.field public static final OooOOO0:I = 0x3


# instance fields
.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:I

.field final synthetic OooO0OO:LOooO0O0/OooO0OO/OooO00o/OooO0O0;


# direct methods
.method constructor <init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0OO:LOooO0O0/OooO0OO/OooO00o/OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0:I

    return-void
.end method

.method constructor <init>(LOooO0O0/OooO0OO/OooO00o/OooO0O0;Lorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0OO:LOooO0O0/OooO0OO/OooO00o/OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "command"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p1, "videoQuality"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0:I

    return-void
.end method

.method static synthetic OooO00o(LOooO0O0/OooO0OO/OooO00o/OooO00o;)I
    .locals 0

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0:I

    return p0
.end method

.method static synthetic OooO0O0(LOooO0O0/OooO0OO/OooO00o/OooO00o;I)I
    .locals 0

    iput p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0:I

    return p1
.end method

.method static synthetic OooO0OO(LOooO0O0/OooO0OO/OooO00o/OooO00o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public OooO0Oo()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "command"

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "videoQuality"

    iget p0, p0, LOooO0O0/OooO0OO/OooO00o/OooO00o;->OooO0O0:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
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
