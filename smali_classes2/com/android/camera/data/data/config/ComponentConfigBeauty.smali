.class public Lcom/android/camera/data/data/config/ComponentConfigBeauty;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigBeauty.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ComponentConfigBeauty"


# instance fields
.field private mIsClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "i:0"

    const-string v1, "i:3"

    const-string v2, "i:6"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v1, 0x7f0f01eb

    const v2, 0x7f0800af

    invoke-direct {p2, v2, v2, v1, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const v3, 0x7f0800ae

    invoke-direct {p2, v2, v3, v1, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p2, p2, v0

    const v0, 0x7f0800ad

    const v1, 0x7f0f01ec

    invoke-direct {p1, v2, v0, v1, p2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final logd(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const/4 p0, 0x3

    aput-object p2, v2, p0

    const-string p0, "%s: legacy=%b, mode=%d, value=%s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearClosed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Z

    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "i:0"

    const-string v0, "1: getComponentValue()"

    invoke-static {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->logd(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2: getComponentValue()"

    invoke-static {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->logd(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3: getComponentValue()"

    invoke-static {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->logd(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "i:0"

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

    const/16 p0, 0xa1

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa2

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_0

    const-string p0, "pref_beautify_level_key_capture"

    return-object p0

    :cond_0
    const-string p0, "pref_beautify_level_key_video"

    return-object p0
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->SWITCHABLE_BEAUTY_LEVELS:[Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    aget-object p0, p0, v2

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPersistValue(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Z

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->mIsClosed:Z

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
