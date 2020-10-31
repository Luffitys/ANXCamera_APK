.class public Landroid/app/BroadcastOptions;
.super Ljava/lang/Object;
.source "BroadcastOptions.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final KEY_ALLOW_BACKGROUND_ACTIVITY_STARTS:Ljava/lang/String; = "android:broadcast.allowBackgroundActivityStarts"

.field static final KEY_DONT_SEND_TO_RESTRICTED_APPS:Ljava/lang/String; = "android:broadcast.dontSendToRestrictedApps"

.field static final KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field static final KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field static final KEY_TEMPORARY_APP_WHITELIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppWhitelistDuration"


# instance fields
.field private mAllowBackgroundActivityStarts:Z

.field private mDontSendToRestrictedApps:Z

.field private mMaxManifestReceiverApiLevel:I

.field private mMinManifestReceiverApiLevel:I

.field private mTemporaryAppWhitelistDuration:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const/16 v1, 0x2710

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const-string v2, "android:broadcast.temporaryAppWhitelistDuration"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    const-string v2, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    const-string v2, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const-string v1, "android:broadcast.allowBackgroundActivityStarts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    return-void
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .registers 1

    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public allowsBackgroundActivityStarts()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    return v0
.end method

.method public getMaxManifestReceiverApiLevel()I
    .registers 2

    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return v0
.end method

.method public getMinManifestReceiverApiLevel()I
    .registers 2

    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return v0
.end method

.method public getTemporaryAppWhitelistDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-wide v0
.end method

.method public isDontSendToRestrictedApps()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    return v0
.end method

.method public setBackgroundActivityStartsAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    return-void
.end method

.method public setDontSendToRestrictedApps(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    return-void
.end method

.method public setMaxManifestReceiverApiLevel(I)V
    .registers 2

    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    return-void
.end method

.method public setMinManifestReceiverApiLevel(I)V
    .registers 2

    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    return-void
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_12

    const-string v3, "android:broadcast.temporaryAppWhitelistDuration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_12
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    if-eqz v1, :cond_1b

    const-string v2, "android:broadcast.minManifestReceiverApiLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_26

    const-string v2, "android:broadcast.maxManifestReceiverApiLevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_26
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mDontSendToRestrictedApps:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    const-string v1, "android:broadcast.dontSendToRestrictedApps"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_30
    iget-boolean v1, p0, Landroid/app/BroadcastOptions;->mAllowBackgroundActivityStarts:Z

    if-eqz v1, :cond_39

    const-string v1, "android:broadcast.allowBackgroundActivityStarts"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_39
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    goto :goto_42

    :cond_41
    move-object v1, v0

    :goto_42
    return-object v1
.end method
