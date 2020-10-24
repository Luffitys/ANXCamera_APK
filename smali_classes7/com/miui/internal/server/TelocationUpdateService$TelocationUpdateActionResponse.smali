.class Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_UPDATE:I = 0x1

.field public static final PATCH_TYPE_DIFF:I = 0x0

.field public static final PATCH_TYPE_FULL:I = 0x1


# instance fields
.field public action:I

.field public description:Ljava/lang/String;

.field public fileSize:J

.field public fileUrl:Ljava/lang/String;

.field public md5Sum:Ljava/lang/String;

.field public newMd5Sum:Ljava/lang/String;

.field public newVersion:J

.field public oldMd5Sum:Ljava/lang/String;

.field public oldVersion:J

.field public patchType:I

.field public result:Z

.field public serviceType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;
    .locals 3

    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;-><init>()V

    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->result:Z

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->description:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->result:Z

    if-eqz v1, :cond_0

    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->action:I

    const-string v1, "info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "serviceType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->serviceType:I

    const-string v1, "patchType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->patchType:I

    const-string v1, "oldVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->oldVersion:J

    const-string v1, "newVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->newVersion:J

    const-string v1, "oldMd5Sum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->oldMd5Sum:Ljava/lang/String;

    const-string v1, "newMd5Sum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->newMd5Sum:Ljava/lang/String;

    const-string v1, "md5Sum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->md5Sum:Ljava/lang/String;

    const-string v1, "fileURL"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->fileUrl:Ljava/lang/String;

    const-string v1, "fileSize"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->fileSize:J

    :cond_0
    return-object v0
.end method
