.class Lcom/android/internal/os/ZygoteArguments;
.super Ljava/lang/Object;
.source "ZygoteArguments.java"


# instance fields
.field mAbiListQuery:Z

.field mApiBlacklistExemptions:[Ljava/lang/String;

.field mAppDataDir:Ljava/lang/String;

.field mBindMountAppDataDirs:Z

.field mBindMountAppStorageDirs:Z

.field mBootCompleted:Z

.field private mCapabilitiesSpecified:Z

.field mDisabledCompatChanges:[J

.field mEffectiveCapabilities:J

.field mGid:I

.field mGidSpecified:Z

.field mGids:[I

.field mHiddenApiAccessLogSampleRate:I

.field mHiddenApiAccessStatslogSampleRate:I

.field mInstructionSet:Ljava/lang/String;

.field mInvokeWith:Ljava/lang/String;

.field mIsTopApp:Z

.field mMountExternal:I

.field mNiceName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPermittedCapabilities:J

.field mPidQuery:Z

.field mPkgDataInfoList:[Ljava/lang/String;

.field mPreloadApp:Ljava/lang/String;

.field mPreloadDefault:Z

.field mPreloadPackage:Ljava/lang/String;

.field mPreloadPackageCacheKey:Ljava/lang/String;

.field mPreloadPackageLibFileName:Ljava/lang/String;

.field mPreloadPackageLibs:Ljava/lang/String;

.field mRLimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field mRemainingArgs:[Ljava/lang/String;

.field mRuntimeFlags:I

.field mSeInfo:Ljava/lang/String;

.field private mSeInfoSpecified:Z

.field mStartChildZygote:Z

.field mTargetSdkVersion:I

.field private mTargetSdkVersionSpecified:Z

.field mUid:I

.field mUidSpecified:Z

.field mUsapPoolEnabled:Z

.field mUsapPoolStatusSpecified:Z

.field mWhitelistedDataInfoList:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteArguments;->parseArgs([Ljava/lang/String;)V

    return-void
.end method

.method private static getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseArgs([Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_3
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v0, v3, :cond_3aa

    aget-object v3, p1, v0

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3aa

    :cond_15
    const-string v5, "--setuid="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "Duplicate arg specified"

    const/4 v7, 0x1

    if-eqz v5, :cond_38

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v4, :cond_32

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    goto/16 :goto_3a7

    :cond_32
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_38
    const-string v5, "--setgid="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v4, :cond_52

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    goto/16 :goto_3a7

    :cond_52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_58
    const-string v5, "--target-sdk-version="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    if-nez v4, :cond_72

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    goto/16 :goto_3a7

    :cond_72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate target-sdk-version specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7a
    const-string v5, "--runtime-args"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v1, 0x1

    goto/16 :goto_3a7

    :cond_85
    const-string v5, "--runtime-flags="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto/16 :goto_3a7

    :cond_99
    const-string v5, "--seinfo="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    if-nez v4, :cond_af

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    goto/16 :goto_3a7

    :cond_af
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b5
    const-string v5, "--capabilities="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x2

    if-eqz v5, :cond_100

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    if-nez v5, :cond_fa

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-ne v8, v7, :cond_e0

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    goto :goto_f8

    :cond_e0
    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    aget-object v4, v6, v7

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    :goto_f8
    goto/16 :goto_3a7

    :cond_fa
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_100
    const-string v5, "--rlimit="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v9, 0x3

    if-eqz v5, :cond_13c

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v9, :cond_134

    array-length v5, v4

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_114
    array-length v8, v4

    if-ge v6, v8, :cond_122

    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_114

    :cond_122
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-nez v6, :cond_12d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    :cond_12d
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a7

    :cond_134
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_13c
    const-string v5, "--setgroups="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16a

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    if-nez v4, :cond_164

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    array-length v5, v4

    sub-int/2addr v5, v7

    :goto_153
    if-ltz v5, :cond_162

    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    aget-object v8, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_153

    :cond_162
    goto/16 :goto_3a7

    :cond_164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_16a
    const-string v5, "--invoke-with"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18d

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v4, :cond_187

    add-int/lit8 v0, v0, 0x1

    :try_start_178
    aget-object v4, p1, v0

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_17c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_178 .. :try_end_17c} :catch_17e

    goto/16 :goto_3a7

    :catch_17e
    move-exception v4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "--invoke-with requires argument"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_187
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_18d
    const-string v5, "--nice-name="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a7

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-nez v4, :cond_1a1

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    goto/16 :goto_3a7

    :cond_1a1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1a7
    const-string v5, "--mount-external-default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b3

    iput v7, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_1b3
    const-string v5, "--mount-external-read"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    iput v8, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_1bf
    const-string v5, "--mount-external-write"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cb

    iput v9, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_1cb
    const-string v5, "--mount-external-full"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d8

    const/4 v4, 0x6

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_1d8
    const-string v5, "--mount-external-installer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e5

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_1e5
    const-string v5, "--mount-external-legacy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f2

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_1f2
    const-string v5, "--mount-external-pass-through"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ff

    const/4 v4, 0x7

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_1ff
    const-string v5, "--mount-external-android-writable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20d

    const/16 v4, 0x8

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_3a7

    :cond_20d
    const-string v5, "--query-abi-list"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_219

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    goto/16 :goto_3a7

    :cond_219
    const-string v5, "--get-pid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_225

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    goto/16 :goto_3a7

    :cond_225
    const-string v5, "--boot-completed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_231

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    goto/16 :goto_3a7

    :cond_231
    const-string v5, "--instruction-set="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_241

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    goto/16 :goto_3a7

    :cond_241
    const-string v5, "--app-data-dir="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_251

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    goto/16 :goto_3a7

    :cond_251
    const-string v5, "--preload-app"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_261

    add-int/lit8 v0, v0, 0x1

    aget-object v4, p1, v0

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    goto/16 :goto_3a7

    :cond_261
    const-string v5, "--preload-package"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_280

    add-int/lit8 v0, v0, 0x1

    aget-object v4, p1, v0

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    add-int/2addr v0, v7

    aget-object v4, p1, v0

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibs:Ljava/lang/String;

    add-int/2addr v0, v7

    aget-object v4, p1, v0

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibFileName:Ljava/lang/String;

    add-int/2addr v0, v7

    aget-object v4, p1, v0

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageCacheKey:Ljava/lang/String;

    goto/16 :goto_3a7

    :cond_280
    const-string v5, "--preload-default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28d

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    const/4 v2, 0x0

    goto/16 :goto_3a7

    :cond_28d
    const-string v5, "--start-child-zygote"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_299

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    goto/16 :goto_3a7

    :cond_299
    const-string v5, "--set-api-blacklist-exemptions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b0

    add-int/lit8 v4, v0, 0x1

    array-length v5, p1

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mApiBlacklistExemptions:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    goto/16 :goto_3a7

    :cond_2b0
    const-string v5, "--hidden-api-log-sampling-rate="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2de

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_2bc
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I
    :try_end_2c2
    .catch Ljava/lang/NumberFormatException; {:try_start_2bc .. :try_end_2c2} :catch_2c6

    nop

    const/4 v2, 0x0

    goto/16 :goto_3a7

    :catch_2c6
    move-exception v5

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid log sampling rate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_2de
    const-string v5, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30c

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_2ea
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I
    :try_end_2f0
    .catch Ljava/lang/NumberFormatException; {:try_start_2ea .. :try_end_2f0} :catch_2f4

    nop

    const/4 v2, 0x0

    goto/16 :goto_3a7

    :catch_2f4
    move-exception v5

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid statslog sampling rate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_30c
    const-string v5, "--package-name="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_326

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_320

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    goto/16 :goto_3a7

    :cond_320
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_326
    const-string v5, "--usap-pool-enabled="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33d

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    const/4 v2, 0x0

    goto/16 :goto_3a7

    :cond_33d
    const-string v5, "--is-top-app"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_348

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    goto :goto_3a7

    :cond_348
    const-string v5, "--disabled-compat-changes="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_374

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    if-nez v4, :cond_36e

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v6, v5, [J

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    const/4 v6, 0x0

    :goto_35e
    if-ge v6, v5, :cond_36d

    iget-object v8, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_35e

    :cond_36d
    goto :goto_3a7

    :cond_36e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_374
    const-string v5, "--pkg-data-info-map"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_383

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    goto :goto_3a7

    :cond_383
    const-string v5, "--whitelisted-data-info-map"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_392

    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mWhitelistedDataInfoList:[Ljava/lang/String;

    goto :goto_3a7

    :cond_392
    const-string v5, "--bind-mount-storage-dirs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39d

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    goto :goto_3a7

    :cond_39d
    const-string v5, "--bind-mount-data-dirs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3aa

    iput-boolean v7, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    :goto_3a7
    add-int/2addr v0, v7

    goto/16 :goto_3

    :cond_3aa
    :goto_3aa
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v3, :cond_3bb

    array-length v3, p1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_3b3

    goto :goto_412

    :cond_3b3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --boot-completed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3bb
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v3, :cond_40e

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v3, :cond_3c4

    goto :goto_40e

    :cond_3c4
    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-eqz v3, :cond_3d5

    array-length v3, p1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_3cd

    goto :goto_412

    :cond_3cd
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --preload-package."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3d5
    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v3, :cond_3e6

    array-length v3, p1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_3de

    goto :goto_412

    :cond_3de
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --preload-app."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3e6
    if-eqz v2, :cond_412

    if-eqz v1, :cond_3f5

    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length v5, v3

    invoke-static {p1, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_412

    :cond_3f5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected argument : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40e
    :goto_40e
    array-length v3, p1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_437

    :cond_412
    :goto_412
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-eqz v3, :cond_436

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length v6, v5

    :goto_41a
    if-ge v4, v6, :cond_42b

    aget-object v7, v5, v4

    const-string v8, "--zygote-socket="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_428

    const/4 v3, 0x1

    goto :goto_42b

    :cond_428
    add-int/lit8 v4, v4, 0x1

    goto :goto_41a

    :cond_42b
    :goto_42b
    if-eqz v3, :cond_42e

    goto :goto_436

    :cond_42e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_436
    :goto_436
    return-void

    :cond_437
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --query-abi-list."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
