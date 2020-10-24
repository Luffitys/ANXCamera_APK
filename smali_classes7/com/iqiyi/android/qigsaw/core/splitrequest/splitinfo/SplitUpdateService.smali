.class public Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;
.super Landroid/app/IntentService;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitUpdateService"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "qigsaw_split_update"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateReporterManager;->getUpdateReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;->onUpdateFailed(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private onUpdateOK(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateReporterManager;->getUpdateReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;->onUpdateOK(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "SplitUpdateService"

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "SplitUpdateService receiver null intent!"

    invoke-static {v1, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v2

    if-nez v2, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "SplitInfoManager has not been created!"

    invoke-static {v1, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v2, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    if-nez v3, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Failed to get splits info of current split-info version!"

    invoke-static {v1, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v3, "new_split_info_version"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "new_split_info_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getCurrentSplitInfoVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "New split-info version null"

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x1f

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "New split-info path null"

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x20

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-interface {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getCurrentSplitInfoVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v3, p1, v0

    const-string v0, "New split-info version %s is equals to current version!"

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x22

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-interface {v2, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->createSplitDetailsForJsonFile(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->verifySplitInfoListing()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getQigsawId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getQigsawId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getUpdateSplits()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_1

    :cond_9
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    aput-object v3, v8, v7

    const-string p1, "Success to check update request, updatedSplitInfoPath: %s, updatedSplitInfoVersion: %s"

    invoke-static {v1, p1, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v2, p1, v3, v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->updateSplitInfoVersion(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0, v4, v3, v6}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateOK(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_a
    const/16 p1, -0x26

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_b
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "There are no splits need to be updated!"

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x24

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_c
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "New qigsaw-id is not equal to current app, so we could\'t update splits!"

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x25

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_d
    :goto_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Failed to parse SplitDetails for new split info file!"

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x23

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_e
    :goto_4
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "New split-info file %s is invalid"

    invoke-static {v1, p1, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x21

    invoke-direct {p0, v4, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateService;->onUpdateError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
