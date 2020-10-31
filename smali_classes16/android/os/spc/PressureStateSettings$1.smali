.class Landroid/os/spc/PressureStateSettings$1;
.super Landroid/database/ContentObserver;
.source "PressureStateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/spc/PressureStateSettings;->registerCloudObserver(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 15

    const-string/jumbo v0, "proc_cleaner_settings"

    const-string/jumbo v1, "pc_distant_app_time"

    const-string/jumbo v2, "pc_recent_fg_time"

    const-string v3, "interested_proc_pss"

    const-string/jumbo v4, "pc_min_interval"

    const-string/jumbo v5, "pc_memlvl2_pss_limit"

    const-string/jumbo v6, "pc_memlvl1_pss_limit"

    const-string/jumbo v7, "pc_mem_available"

    const-string/jumbo v8, "pc_mem_full_threshold"

    const-string/jumbo v9, "pc_enabled"

    if-nez p2, :cond_20

    return-void

    :cond_20
    :try_start_20
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, -0x2

    if-eqz v10, :cond_3d

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    goto/16 :goto_10f

    :cond_3d
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->TRIGGER_PROC_CLEAN_PSI_MEM_FULL_MS:J

    goto/16 :goto_10f

    :cond_55
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->MEMORY_AVAILABLE_THRESHOLD_KB:J

    goto/16 :goto_10f

    :cond_6d
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL1_PSS_LIMIT_KB:J

    goto/16 :goto_10f

    :cond_85
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL2_PSS_LIMIT_KB:J

    goto/16 :goto_10f

    :cond_9d
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->PROC_CLEAN_MIN_INTERVAL_MS:J

    goto :goto_10f

    :cond_b4
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->INTERESTED_PROC_MIN_PSS_KB:J

    goto :goto_10f

    :cond_cb
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->RECENT_FOREGROUND_APP_TIME_MILLIS:J

    goto :goto_10f

    :cond_e2
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    iget-object v0, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->DISTANT_APP_TIME_TIME_MILLIS:J

    goto :goto_10f

    :cond_f9
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    iget-object v1, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_SETTINGS:Ljava/lang/String;
    :try_end_10f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_20 .. :try_end_10f} :catch_110

    :cond_10f
    :goto_10f
    goto :goto_117

    :catch_110
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    sput-boolean v1, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_CONTROL_ENABLED:Z

    :goto_117
    return-void
.end method
