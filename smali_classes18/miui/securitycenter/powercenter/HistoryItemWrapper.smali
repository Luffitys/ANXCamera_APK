.class public Lmiui/securitycenter/powercenter/HistoryItemWrapper;
.super Ljava/lang/Object;
.source "HistoryItemWrapper.java"


# static fields
.field static final CMD_CURRENT_TIME:B = 0x5t

.field static final CMD_NULL:B = -0x1t

.field static final CMD_OVERFLOW:B = 0x6t

.field static final CMD_RESET:B = 0x7t

.field static final CMD_SHUTDOWN:B = 0x8t

.field static final CMD_START:B = 0x4t

.field static final CMD_UPDATE:B


# instance fields
.field batteryHealth:B

.field batteryLevel:B

.field batteryPlugType:B

.field batteryStatus:B

.field batteryTemperature:S

.field batteryVoltage:C

.field charging:Z

.field cmd:B

.field cpuRunning:Z

.field gpsOn:Z

.field phoneSignalStrength:I

.field screenOn:Z

.field time:J

.field wakelockOn:Z

.field wifiOn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    return-void
.end method


# virtual methods
.method public getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string v0, "batteryLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2d
    const-string v0, "batteryStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3c
    const-string v0, "batteryHealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4b
    const-string v0, "batteryPlugType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_5a
    const-string v0, "batteryTemperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-short v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_69
    const-string v0, "batteryVoltage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-char v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_78
    const-string v0, "wifiOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_87
    const-string v0, "gpsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_96
    const-string v0, "charging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a5
    const-string v0, "screenOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b4
    const-string v0, "wakelockOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c3
    const-string v0, "phoneSignalStrength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_d2
    const-string v0, "cpuRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_e1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    return-wide v0
.end method

.method public isDeltaData()Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_e

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-nez v0, :cond_d

    move v1, v2

    :cond_d
    return v1

    :cond_e
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    return v1
.end method

.method public isOverflow()Z
    .registers 3

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
