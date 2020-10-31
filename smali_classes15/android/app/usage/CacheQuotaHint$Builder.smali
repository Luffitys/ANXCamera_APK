.class public final Landroid/app/usage/CacheQuotaHint$Builder;
.super Ljava/lang/Object;
.source "CacheQuotaHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mQuota:J

.field private mUid:I

.field private mUsageStats:Landroid/app/usage/UsageStats;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/CacheQuotaHint;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getUsageStats()Landroid/app/usage/UsageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-virtual {p1}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    return-void
.end method

.method static synthetic access$000(Landroid/app/usage/CacheQuotaHint$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/usage/CacheQuotaHint$Builder;)I
    .registers 2

    iget v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    return v0
.end method

.method static synthetic access$200(Landroid/app/usage/CacheQuotaHint$Builder;)Landroid/app/usage/UsageStats;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/usage/CacheQuotaHint$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    return-wide v0
.end method


# virtual methods
.method public build()Landroid/app/usage/CacheQuotaHint;
    .registers 2

    new-instance v0, Landroid/app/usage/CacheQuotaHint;

    invoke-direct {v0, p0}, Landroid/app/usage/CacheQuotaHint;-><init>(Landroid/app/usage/CacheQuotaHint$Builder;)V

    return-object v0
.end method

.method public setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-wide p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mQuota:J

    return-object p0
.end method

.method public setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 3

    const-string v0, "Proposed uid was negative."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iput p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUid:I

    return-object p0
.end method

.method public setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/usage/CacheQuotaHint$Builder;->mUuid:Ljava/lang/String;

    return-object p0
.end method
