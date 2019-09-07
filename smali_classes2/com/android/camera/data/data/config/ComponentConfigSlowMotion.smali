.class public Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigSlowMotion.java"


# static fields
.field public static final DATA_CONFIG_NEW_SLOW_MOTION_120:Ljava/lang/String; = "slow_motion_120"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_240:Ljava/lang/String; = "slow_motion_240"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_960:Ljava/lang/String; = "slow_motion_960"

.field private static final SLOW_MOTION_MODE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->pc()Z

    move-result v0

    const-string v1, "slow_motion_240"

    const-string v2, "slow_motion_120"

    if-eqz v0, :cond_0

    const-string v0, "slow_motion_960"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->oc()Z

    move-result v0

    if-eqz v0, :cond_1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->sc()Z

    move-result v0

    if-eqz v0, :cond_2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getContentDesc()I
    .locals 1

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "slow_motion_120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0f0019

    return p0

    :cond_0
    const-string v0, "slow_motion_240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0f001a

    return p0

    :cond_1
    const p0, 0x7f0f001b

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getImageResource()I
    .locals 1

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "slow_motion_120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f080145

    return p0

    :cond_0
    const-string v0, "slow_motion_240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f080146

    return p0

    :cond_1
    const p0, 0x7f080147

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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "key_new_slow_motion"

    return-object p0
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    aget-object p0, p0, v2

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportAllFPS()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    return-object p0
.end method

.method public isSlowMotionFps120()Z
    .locals 1

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "slow_motion_120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSlowMotionFps960()Z
    .locals 1

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "slow_motion_960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setVideoNewSlowMotionFPS(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xac

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public supportSlowMotionSwitch()Z
    .locals 1

    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->SLOW_MOTION_MODE:[Ljava/lang/String;

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
