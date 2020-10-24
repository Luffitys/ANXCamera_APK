.class public Lcom/xiaomi/camera/rcs/RemoteControlContract;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CUSTOM_CALLBACK_CAPTURING_MODE_CHANGED:Ljava/lang/String; = "com.xiaomi.wearable.onCapturingModeChanged"

.field public static final CUSTOM_CALLBACK_GROUP_OWNER_DIED:Ljava/lang/String; = "com.xiaomi.wearable.onGroupOwnerDied"

.field public static final DEFAULT_STREAMING_SERVER_PORT:I = 0x1f96

.field private static final PAYLOAD_KEY_AUTHORISATION_REQUIRED:Ljava/lang/String; = "authorisation_required"

.field private static final PAYLOAD_KEY_CODEC_INPUT_SURFACE:Ljava/lang/String; = "codec_surface"

.field private static final PAYLOAD_KEY_CURRENT_CAPTURING_MODE:Ljava/lang/String; = "curr_mode"

.field private static final PAYLOAD_KEY_ERROR_CODE:Ljava/lang/String; = "errno"

.field private static final PAYLOAD_KEY_PREVIOUS_CAPTURING_MODE:Ljava/lang/String; = "prev_mode"

.field private static final PAYLOAD_KEY_STREAMING_SERVER_PORT:Ljava/lang/String; = "rtsp_port"

.field private static final PAYLOAD_KEY_STREAMING_SESSION_ID:Ljava/lang/String; = "streaming_session_id"

.field private static final PAYLOAD_KEY_STREAMING_VIDEO_RESOLUTION_X:Ljava/lang/String; = "video_res_x"

.field private static final PAYLOAD_KEY_STREAMING_VIDEO_RESOLUTION_Y:Ljava/lang/String; = "video_res_y"

.field public static final UNSPECIFIED_CAPTURING_MODE:I = 0xa0


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodecInputSurface(Landroid/os/Bundle;)Landroid/view/Surface;
    .locals 1

    const-string v0, "codec_surface"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0
.end method

.method public static getCurrentCapturingMode(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "curr_mode"

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getErrorCode(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "errno"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPreviousCapturingMode(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "prev_mode"

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStreamingServerPort(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "rtsp_port"

    const/16 v1, 0x1f96

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStreamingSessionId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "streaming_session_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoStreamSize(Landroid/os/Bundle;)Landroid/util/Size;
    .locals 3

    const-string v0, "video_res_x"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "video_res_y"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static isAuthorisationRequired(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "authorisation_required"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static jsonify(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAuthorisationRequired(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "authorisation_required"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCodecInputSurface(Landroid/os/Bundle;Landroid/view/Surface;)V
    .locals 1

    const-string v0, "codec_surface"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static setCurrentCapturingMode(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "curr_mode"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setErrorCode(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "errno"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPreviousCapturingMode(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "prev_mode"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setStreamingServerPort(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "rtsp_port"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setStreamingSessionId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "streaming_session_id"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setVideoStreamSize(Landroid/os/Bundle;II)V
    .locals 1

    const-string v0, "video_res_x"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "video_res_y"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
