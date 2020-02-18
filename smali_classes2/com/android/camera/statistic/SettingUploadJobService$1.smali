.class Lcom/android/camera/statistic/SettingUploadJobService$1;
.super Ljava/lang/Object;
.source "SettingUploadJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/statistic/SettingUploadJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/statistic/SettingUploadJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/camera/statistic/SettingUploadJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    iput-object p2, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_last_setting_update_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    new-instance v0, Lcom/android/camera/statistic/SettingRecord;

    iget-object v1, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    invoke-virtual {v1}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/statistic/SettingRecord;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/camera/statistic/SettingRecord;->startRecord()V

    invoke-virtual {v0}, Lcom/android/camera/statistic/SettingRecord;->endRecord()V

    iget-object v0, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    iget-object v1, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    iget-object p0, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/statistic/SettingUploadJobService;->scheduleSettingUploadJob(Landroid/content/Context;)V

    return-void
.end method
