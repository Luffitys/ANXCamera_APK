.class Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;
.super Ljava/lang/Object;
.source "TelocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/TelocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationUpdateResponse"
.end annotation


# static fields
.field private static final RESULT_OK:Ljava/lang/String; = "ok"


# instance fields
.field public code:I

.field public data:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

.field public description:Ljava/lang/String;

.field public result:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJson(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;

    invoke-direct {v0}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;-><init>()V

    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->result:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->code:I

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->description:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d101b17c77ff93cs"

    # invokes: Lcom/miui/internal/server/TelocationUpdateService;->decodeBase64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/miui/internal/server/TelocationUpdateService;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->fromJson(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->data:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    :cond_42
    return-object v0
.end method

.method public static request(Ljava/lang/String;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lmiui/util/async/tasks/HttpJsonObjectTask;

    new-instance v1, Lmiui/net/http/HttpSession;

    invoke-direct {v1}, Lmiui/net/http/HttpSession;-><init>()V

    invoke-direct {v0, v1, p0}, Lmiui/util/async/tasks/HttpJsonObjectTask;-><init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V

    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    invoke-virtual {v0}, Lmiui/util/async/tasks/HttpJsonObjectTask;->doLoad()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->fromJson(Lorg/json/JSONObject;)Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public shouldUpdate()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->result:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->data:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    if-eqz v0, :cond_1a

    iget-boolean v0, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->result:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateResponse;->data:Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;

    iget v0, v0, Lcom/miui/internal/server/TelocationUpdateService$TelocationUpdateActionResponse;->action:I

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method
