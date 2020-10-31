.class Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;
.super Ljava/lang/Object;
.source "TelocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationUpdateActionResponse"
.end annotation


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
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

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

    if-eqz v1, :cond_6f

    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->action:I

    const-string v1, "info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "serviceType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->serviceType:I

    const-string v2, "patchType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->patchType:I

    const-string v2, "oldVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->oldVersion:J

    const-string v2, "newVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->newVersion:J

    const-string v2, "oldMd5Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->oldMd5Sum:Ljava/lang/String;

    const-string v2, "newMd5Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->newMd5Sum:Ljava/lang/String;

    const-string v2, "md5Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->md5Sum:Ljava/lang/String;

    const-string v2, "fileURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->fileUrl:Ljava/lang/String;

    const-string v2, "fileSize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->fileSize:J

    :cond_6f
    return-object v0
.end method
