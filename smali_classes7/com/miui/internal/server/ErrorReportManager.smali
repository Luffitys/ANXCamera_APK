.class public Lcom/miui/internal/server/ErrorReportManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_MAX_SIZE:I = 0x7d000

.field private static final PREF_KEY_LAST_UPLOAD_TIME:Ljava/lang/String; = "error_report_last_update_time"

.field private static final TAG:Ljava/lang/String; = "ErrorReportManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/internal/server/ErrorReportManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/server/ErrorReportManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/server/ErrorReportManager;
    .locals 1

    sget-object v0, Lcom/miui/internal/server/ErrorReportManager$Holder;->INSTANCE:Lcom/miui/internal/server/ErrorReportManager;

    return-object v0
.end method

.method private getLastUploadTime()J
    .locals 6

    iget-object p0, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "error_report_last_update_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    rem-long v4, v2, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private saveLastUploadTime(J)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "error_report_last_update_time"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public declared-synchronized upload()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/util/DeviceHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/internal/server/ErrorReportManager;->getLastUploadTime()J

    move-result-wide v1

    const-string v3, "fc_anr"

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/internal/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7d000

    invoke-virtual {v1, v2}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "ErrorReportManager"

    const-string v5, "Fail to parse json"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "ErrorReportManager"

    const-string v2, "Stop uploading error report for free network disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lmiui/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/internal/server/ErrorReportManager;->saveLastUploadTime(J)V

    invoke-virtual {v1}, Lmiui/os/DropBoxManager$Entry;->close()V

    const-string v1, "fc_anr"

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
