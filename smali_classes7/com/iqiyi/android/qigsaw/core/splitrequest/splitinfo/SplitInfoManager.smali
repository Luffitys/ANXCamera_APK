.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract createSplitDetailsForJsonFile(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;
.end method

.method public abstract getBaseAppVersionName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getCurrentSplitInfoVersion()Ljava/lang/String;
.end method

.method public abstract getQigsawId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSplitEntryFragments(Landroid/content/Context;)Ljava/util/List;
.end method

.method public abstract getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;
.end method

.method public abstract getSplitInfos(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;
.end method

.method public abstract getUpdateSplits(Landroid/content/Context;)Ljava/util/List;
.end method

.method public abstract updateSplitInfoVersion(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
.end method
