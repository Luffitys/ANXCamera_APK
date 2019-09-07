.class public Lcom/android/camera/data/data/runing/ComponentRunningShine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningShine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;,
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    }
.end annotation


# static fields
.field public static final ENTRY_NONE:I = -0x1

.field public static final ENTRY_POPUP_BEAUTY:I = 0x5

.field public static final ENTRY_POPUP_SHINE:I = 0x4

.field public static final ENTRY_TOP_BEAUTY:I = 0x2

.field public static final ENTRY_TOP_FILTER:I = 0x3

.field public static final ENTRY_TOP_SHINE:I = 0x1

.field public static final SHINE_BEAUTY_LEVEL_SMOOTH:Ljava/lang/String; = "2"

.field public static final SHINE_BEAUTY_LEVEL_SWITCH:Ljava/lang/String; = "1"

.field public static final SHINE_EYE_LIGHT:Ljava/lang/String; = "9"

.field public static final SHINE_FIGURE:Ljava/lang/String; = "6"

.field public static final SHINE_FILTER:Ljava/lang/String; = "7"

.field public static final SHINE_LIGHTING:Ljava/lang/String; = "8"

.field public static final SHINE_LIVE_BEAUTY:Ljava/lang/String; = "11"

.field public static final SHINE_LIVE_FILTER:Ljava/lang/String; = "10"

.field public static final SHINE_LIVE_SPEED:Ljava/lang/String; = "13"

.field public static final SHINE_LIVE_STICKER:Ljava/lang/String; = "12"

.field public static final SHINE_MAKEUP:Ljava/lang/String; = "5"

.field public static final SHINE_MODEL_ADVANCE:Ljava/lang/String; = "3"

.field public static final SHINE_MODEL_REMODELING:Ljava/lang/String; = "4"


# instance fields
.field private mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field private mBeautyVersion:I

.field private mCurrentStatus:Z

.field private mCurrentType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mDefaultType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mIsClosed:Z

.field private mShineEntry:I
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;
    .end annotation
.end field

.field private mSupportBeautyBody:Z

.field private mSupportBeautyLevel:Z

.field private mSupportBeautyMakeUp:Z

.field private mSupportBeautyModel:Z

.field private mSupportSmoothLevel:Z

.field private mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-void
.end method

.method private generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    invoke-static {}, Lcom/mi/config/b;->Pi()Z

    move-result p0

    const-string p1, "1"

    const v0, 0x7f080094

    const v1, 0x7f080093

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0f0063

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0f0066

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f0063

    goto :goto_0

    :cond_0
    const p0, 0x7f0f0059

    :goto_0
    const v1, 0x7f080093

    const v2, 0x7f080094

    const-string v3, "6"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08013e

    const v1, 0x7f08013f

    const v2, 0x7f0f0200

    const-string v3, "7"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMakeupItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080093

    const v1, 0x7f080094

    const v2, 0x7f0f0064

    const-string v3, "5"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    invoke-static {}, Lcom/mi/config/b;->Pi()Z

    move-result v0

    const v1, 0x7f080094

    const v2, 0x7f080093

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f0063

    goto :goto_0

    :cond_0
    const p0, 0x7f0f0065

    :goto_0
    const-string v3, "4"

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0f0067

    const-string v3, "3"

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080093

    const v0, 0x7f080094

    const v1, 0x7f0f0063

    const-string v2, "2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public determineStatus(I)Z
    .locals 9

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v4, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x61f

    if-eq v7, v8, :cond_5

    const/16 v8, 0x620

    if-eq v7, v8, :cond_4

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "7"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x7

    goto :goto_2

    :pswitch_1
    const-string v7, "6"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    goto :goto_2

    :pswitch_2
    const-string v7, "5"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    goto :goto_2

    :pswitch_3
    const-string v7, "4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    goto :goto_2

    :pswitch_4
    const-string v7, "3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_2

    :pswitch_5
    const-string v7, "2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    goto :goto_2

    :pswitch_6
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_4
    const-string v7, "11"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    goto :goto_2

    :cond_5
    const-string v7, "10"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x8

    goto :goto_2

    :cond_6
    :goto_1
    move v4, v6

    :goto_2
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_7
    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getLiveFilter()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_8
    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v4, v6, :cond_2

    if-lez v4, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_9
    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveBeautyOpen()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_a
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_b
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    move v1, v5

    :cond_a
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    :goto_3
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public getBeautyVersion()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    return p0
.end method

.method public getBottomEntryRes(I)I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    iget p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p0, 0x7f080164

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    if-eqz p0, :cond_1

    const p0, 0x7f080094

    goto :goto_0

    :cond_1
    const p0, 0x7f080093

    :goto_0
    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    if-eqz p0, :cond_3

    const p0, 0x7f080098

    goto :goto_1

    :cond_3
    const p0, 0x7f080097

    :goto_1
    return p0
.end method

.method public getCurrentStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopConfigEntryRes(I)I
    .locals 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    iget p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    const v1, 0x7f080164

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    if-eqz p0, :cond_1

    const p0, 0x7f08013f

    goto :goto_0

    :cond_1
    const p0, 0x7f08013e

    :goto_0
    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    if-eqz p0, :cond_3

    const p0, 0x7f080094

    goto :goto_1

    :cond_3
    const p0, 0x7f080093

    :goto_1
    return p0

    :cond_4
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    if-eqz p0, :cond_5

    const v1, 0x7f080165

    :cond_5
    return v1
.end method

.method public getTopConfigItem()I
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unknown Shine"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 p0, 0xd4

    return p0
.end method

.method public getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return p0
.end method

.method public isLegacyBeautyVersion()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmoothDependBeautyVersion()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInit()V

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getBeautyVersion()I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lcom/mi/config/b;->Pi()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    const-string v3, "7"

    const/4 v4, 0x3

    const/4 v5, 0x4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_10

    :pswitch_1
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_10

    :pswitch_2
    iput v5, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_3
    iput v5, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const-string p1, "10"

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080093

    const v2, 0x7f080094

    const v3, 0x7f0f0063

    const-string v4, "11"

    invoke-direct {p3, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08013e

    const v2, 0x7f08013f

    const v3, 0x7f0f0200

    invoke-direct {p3, v1, v2, v3, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_4
    iput v5, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_7

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_5
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_9

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_8

    move v1, v2

    goto :goto_6

    :cond_8
    move v1, v0

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    :goto_7
    if-nez p2, :cond_b

    iput v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->isSupportBeautyBody()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    iput v5, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->db()Z

    move-result p1

    if-nez p1, :cond_c

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->Kc()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyMakeup()Z

    move-result p1

    if-eqz p1, :cond_f

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeupItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    if-nez p2, :cond_e

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto :goto_8

    :cond_e
    iput v5, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    :cond_f
    :goto_8
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_7
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-eqz p1, :cond_1d

    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_11

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_10

    goto :goto_9

    :cond_10
    move v2, v0

    :goto_9
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_11
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_12

    goto :goto_a

    :cond_12
    move v2, v0

    :goto_a
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_8
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-eqz p1, :cond_1c

    iput v5, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    if-nez p2, :cond_17

    iput-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_14

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_13

    move p2, v2

    goto :goto_b

    :cond_13
    move p2, v0

    :goto_b
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->isSupportShortVideoBeautyBody()Z

    move-result p1

    if-eqz p1, :cond_1b

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_14
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->isSupportShortVideoBeautyBody()Z

    move-result p1

    if-eqz p1, :cond_15

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_15
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_16

    goto :goto_c

    :cond_16
    move v2, v0

    :goto_c
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_17
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p1

    if-nez p1, :cond_19

    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_18

    goto :goto_d

    :cond_18
    move v2, v0

    :goto_d
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    iput-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p2, v2, :cond_1a

    goto :goto_e

    :cond_1a
    move v2, v0

    :goto_e
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_f
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_10
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    :cond_1e
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public supportBeautyBody()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    return p0
.end method

.method public supportBeautyLevel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    return p0
.end method

.method public supportBeautyMakeUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    return p0
.end method

.method public supportBeautyModel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    return p0
.end method

.method public supportPopUpEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public supportSmoothLevel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    return p0
.end method

.method public supportTopConfigEntry()Z
    .locals 2

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method
