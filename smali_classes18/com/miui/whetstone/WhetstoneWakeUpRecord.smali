.class public Lcom/miui/whetstone/WhetstoneWakeUpRecord;
.super Ljava/lang/Object;
.source "WhetstoneWakeUpRecord.java"


# static fields
.field private static final DELAY_STOP_RTC_APP_TIME:I = 0x1388


# instance fields
.field public intent:Landroid/app/PendingIntent;

.field public packageName:Ljava/lang/String;

.field public status:Z

.field public uid:I

.field public updateTime:J

.field public wakeup_count:I


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->uid:I

    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    return-void
.end method


# virtual methods
.method public clearWakeupCount()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    return-void
.end method

.method public disableWakeUpStatus()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    return-void
.end method

.method public getLastWakeUpTime()J
    .registers 3

    iget-wide v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    return-wide v0
.end method

.method public getRecordPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRecordStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    return v0
.end method

.method public getWakeUpCount()I
    .registers 2

    iget v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    return v0
.end method

.method public increaseWakeUpCount()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    :cond_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; wakeup_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; updateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
