.class public Landroid/os/spc/MemoryCleanInfo;
.super Ljava/lang/Object;
.source "MemoryCleanInfo.java"


# instance fields
.field public afterMemAvail:J

.field public afterMemFree:J

.field public beforeMemAvail:J

.field public beforeMemFree:J

.field public killedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public memTotal:J

.field public neededMemory:J

.field public swapTotal:J

.field public targetListData:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/os/spc/MemoryCleanInfo;
    .registers 4

    new-instance v0, Landroid/os/spc/MemoryCleanInfo;

    invoke-direct {v0}, Landroid/os/spc/MemoryCleanInfo;-><init>()V

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->time:J

    const-string v1, "beforeMemFree"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    const-string v1, "beforeMemAvail"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    const-string v1, "afterMemFree"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    const-string v1, "afterMemAvail"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    const-string/jumbo v1, "neededMemory"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    const-string/jumbo v1, "memTotal"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    const-string/jumbo v1, "swapTotal"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    const-string v1, "killedApps"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v2, v0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_56
    const-string v2, "appsInTarget"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/spc/MemoryCleanInfo;->targetListData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->time:J

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    const-string v3, "beforeMemFree"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    const-string v3, "beforeMemAvail"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    const-string v3, "afterMemFree"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    const-string v3, "afterMemAvail"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    const-string/jumbo v3, "neededMemory"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    const-string/jumbo v3, "memTotal"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    const-string/jumbo v3, "swapTotal"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    const-string v2, "killedApps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroid/os/spc/MemoryCleanInfo;->targetListData:Ljava/lang/String;

    const-string v2, "appsInTarget"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "beforeMemFree"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "beforeMemAvail"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "afterMemFree"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "afterMemAvail"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "neededMemory"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "memTotal"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "swapTotal"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "killedApps"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appsInTarget"

    iget-object v2, p0, Landroid/os/spc/MemoryCleanInfo;->targetListData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_54} :catch_56

    nop

    return-object v0

    :catch_56
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_20
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "time=%s, beforeMemFree=%s, beforeMemAvail=%s, afterMemFree=%s, afterMemAvail=%s, neededMemory=%s, memTotal=%s, swapTotal=%s, killedApps=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
