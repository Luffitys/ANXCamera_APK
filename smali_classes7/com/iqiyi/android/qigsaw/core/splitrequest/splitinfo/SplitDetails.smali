.class final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final abiFilters:Ljava/util/List;

.field private final appVersionName:Ljava/lang/String;

.field private final qigsawId:Ljava/lang/String;

.field private final splitEntryFragments:Ljava/util/List;

.field private final splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

.field private final updateSplits:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->qigsawId:Ljava/lang/String;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->appVersionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->abiFilters:Ljava/util/List;

    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->updateSplits:Ljava/util/List;

    iput-object p5, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitEntryFragments:Ljava/util/List;

    iput-object p6, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    return-void
.end method


# virtual methods
.method getAbiFilters()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->abiFilters:Ljava/util/List;

    return-object p0
.end method

.method getAppVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->appVersionName:Ljava/lang/String;

    return-object p0
.end method

.method getQigsawId()Ljava/lang/String;
    .locals 0

    const-string p0, "5.0.0.0"

    return-object p0
.end method

.method getSplitEntryFragments()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitEntryFragments:Ljava/util/List;

    return-object p0
.end method

.method getSplitInfoListing()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    return-object p0
.end method

.method getUpdateSplits()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->updateSplits:Ljava/util/List;

    return-object p0
.end method

.method verifySplitInfoListing()Z
    .locals 3

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->getSplitInfoMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->getSplitInfoMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v1
.end method
