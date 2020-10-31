.class public Landroid/content/SyncStatusInfoAdapter;
.super Ljava/lang/Object;
.source "SyncStatusInfoAdapter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumSyncs(Landroid/content/SyncStatusInfo;)I
    .registers 2

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v0, v0, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    return v0
.end method
