.class public final Landroid/media/audiopolicy/AudioProductStrategy;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_GROUP:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AudioProductStrategy"

.field private static sAudioProductStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDefaultAttributes:Landroid/media/AudioAttributes;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

.field private mId:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioProductStrategy$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "name must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AudioAttributesGroups must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    iput-object p3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;Landroid/media/audiopolicy/AudioProductStrategy$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->attributesMatches(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z

    move-result v0

    return v0
.end method

.method private static attributesMatches(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z
    .registers 7

    const-string/jumbo v0, "refAttr must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    return v3

    :cond_27
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v4

    if-ne v2, v4, :cond_6f

    :cond_37
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    if-ne v2, v4, :cond_6f

    :cond_47
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    and-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    if-ne v2, v4, :cond_6f

    :cond_62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_70

    :cond_6f
    goto :goto_71

    :cond_70
    :goto_70
    const/4 v3, 0x1

    :goto_71
    return v3
.end method

.method public static createInvalidAudioProductStrategy(I)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    const-string v2, "dummy strategy"

    invoke-direct {v0, v2, p0, v1}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-object v0
.end method

.method public static getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;
    .registers 4

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v2

    if-eqz v2, :cond_1b

    return-object v2

    :cond_1b
    goto :goto_8

    :cond_1c
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioProductStrategies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    if-nez v0, :cond_16

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    if-nez v1, :cond_11

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->initializeAudioProductStrategies()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    :goto_16
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    return-object v0
.end method

.method public static getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 5

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    if-nez v1, :cond_d

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->initializeAudioProductStrategies()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    :cond_d
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v3

    if-ne v3, p0, :cond_27

    monitor-exit v0

    return-object v2

    :cond_27
    goto :goto_13

    :cond_28
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public static getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 6

    const-string v0, "AudioAttributes must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;)Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attributes "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ported by strategy "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no stream type associated, DO NOT USE STREAM TO CONTROL THE VOLUME"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AudioProductStrategy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_53
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v3, v2, :cond_5a

    return v3

    :cond_5a
    goto :goto_d

    :cond_5b
    return v2
.end method

.method private static initializeAudioProductStrategies()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->native_list_audio_product_strategies(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_12

    const-string v2, "AudioProductStrategy"

    const-string v3, ": initializeAudioProductStrategies failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v0
.end method

.method private static native native_list_audio_product_strategies(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    iget-object v3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    iget v4, v2, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    if-nez v1, :cond_f

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_16

    :cond_f
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .registers 7

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsStreamType(I)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    return v0
.end method

.method public getLegacyStreamTypeForAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 7

    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsAttributes(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getStreamType()I

    move-result v0

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 7

    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsAttributes(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result v0

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public getVolumeGroupIdForLegacyStreamType(I)I
    .registers 7

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsStreamType(I)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result v0

    return v0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public supportsAudioAttributes(Landroid/media/AudioAttributes;)Z
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsAttributes(Landroid/media/AudioAttributes;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1e
    return-void
.end method
