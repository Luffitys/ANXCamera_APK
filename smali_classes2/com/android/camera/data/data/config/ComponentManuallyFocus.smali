.class public Lcom/android/camera/data/data/config/ComponentManuallyFocus;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyFocus.java"


# instance fields
.field private mIsFixedFocus:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0f0228

    const/4 v2, -0x1

    const-string v3, "1000"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v3, "manual"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public disableUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mIsFixedFocus:Z

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "1000"

    return-object p0
.end method

.method public getDefaultValueDisplayString(I)I
    .locals 0
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    const p0, 0x7f0f0228

    return p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0318

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_focus_position_key"

    return-object p0
.end method

.method public getValueDisplayString(I)I
    .locals 0
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_0

    const p0, 0x7f0f0228

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedDrawable(I)I
    .locals 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-double p0, p0

    const-wide v0, 0x4082c00000000000L    # 600.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    const p0, 0x7f0800e9

    return p0

    :cond_1
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_2

    const p0, 0x7f0800ea

    return p0

    :cond_2
    const p0, 0x7f0800e8

    return p0
.end method

.method public setFixedFocusLens(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mIsFixedFocus:Z

    return-void
.end method
