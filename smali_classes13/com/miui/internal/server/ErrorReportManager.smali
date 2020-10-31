.class public Lcom/miui/internal/server/ErrorReportManager;
.super Ljava/lang/Object;
.source "ErrorReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/ErrorReportManager$Holder;
    }
.end annotation


# static fields
.field private static final LOG_MAX_SIZE:I = 0x7d000

.field private static final PREF_KEY_LAST_UPLOAD_TIME:Ljava/lang/String; = "error_report_last_update_time"

.field private static final TAG:Ljava/lang/String; = "ErrorReportManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/internal/server/ErrorReportManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/server/ErrorReportManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/server/ErrorReportManager;
    .registers 1

    sget-object v0, Lcom/miui/internal/server/ErrorReportManager$Holder;->INSTANCE:Lcom/miui/internal/server/ErrorReportManager;

    return-object v0
.end method

.method private getLastUploadTime()J
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "error_report_last_update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    rem-long v5, v3, v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    return-wide v5
.end method

.method private saveLastUploadTime(J)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "error_report_last_update_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public declared-synchronized upload()V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/util/DeviceHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_81

    :cond_15
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/internal/server/ErrorReportManager;->getLastUploadTime()J

    move-result-wide v1

    const-string v3, "fc_anr"

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/internal/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object v3

    :goto_23
    if-eqz v3, :cond_7a

    iget-object v4, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7a

    const v4, 0x7d000

    invoke-virtual {v3, v4}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_83

    if-nez v6, :cond_4a

    :try_start_3b
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_40} :catch_42
    .catchall {:try_start_3b .. :try_end_40} :catchall_83

    move-object v5, v6

    goto :goto_4a

    :catch_42
    move-exception v6

    :try_start_43
    const-string v7, "ErrorReportManager"

    const-string v8, "Fail to parse json"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    if-eqz v5, :cond_67

    iget-object v6, p0, Lcom/miui/internal/server/ErrorReportManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v6, v5, v7}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    move-result v6

    if-nez v6, :cond_67

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v7

    if-nez v7, :cond_67

    const-string v7, "ErrorReportManager"

    const-string v8, "Stop uploading error report for free network disconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :cond_67
    invoke-virtual {v3}, Lmiui/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    invoke-direct {p0, v1, v2}, Lcom/miui/internal/server/ErrorReportManager;->saveLastUploadTime(J)V

    invoke-virtual {v3}, Lmiui/os/DropBoxManager$Entry;->close()V

    const-string v6, "fc_anr"

    invoke-virtual {v0, v6, v1, v2}, Lcom/miui/internal/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object v6

    move-object v3, v6

    goto :goto_23

    :cond_7a
    :goto_7a
    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_7f
    .catchall {:try_start_43 .. :try_end_7f} :catchall_83

    :cond_7f
    monitor-exit p0

    return-void

    :cond_81
    :goto_81
    monitor-exit p0

    return-void

    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0
.end method
