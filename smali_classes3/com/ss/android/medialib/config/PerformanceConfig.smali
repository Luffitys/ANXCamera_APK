.class public Lcom/ss/android/medialib/config/PerformanceConfig;
.super Ljava/lang/Object;
.source "PerformanceConfig.java"


# static fields
.field public static final DISABLE:I = 0x2

.field public static final ENABLE:I = 0x1

.field public static final KEY_USE_OPENSL:Ljava/lang/String; = "use_opensl"

.field private static final TAG:Ljava/lang/String; = "PerformanceConfig"

.field public static final UNDEFINED:I = 0x0

.field private static useOpenSL:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "use_opensl"

    invoke-static {p0, v0}, Lcom/ss/android/medialib/config/PerformanceConfig;->getConfig(Ljava/util/Map;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    :cond_0
    sput p0, Lcom/ss/android/medialib/config/PerformanceConfig;->useOpenSL:I

    return-void
.end method

.method private static getConfig(Ljava/util/Map;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static isUseOpenSL()Z
    .locals 2

    sget v0, Lcom/ss/android/medialib/config/PerformanceConfig;->useOpenSL:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static restoreFromCache()V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v0, Lcom/ss/android/medialib/VideoSdkCore;->APPLICATION_CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ss/android/medialib/util/SharedPrefUtil;->getPerformanceConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/medialib/config/PerformanceConfig;->fromMap(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call VideoSdkCore.init() before."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateConfig(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ss/android/medialib/config/PerformanceConfig;->fromMap(Ljava/util/Map;)V

    sget-object v0, Lcom/ss/android/medialib/VideoSdkCore;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/ss/android/medialib/util/SharedPrefUtil;->setPerformanceConfig(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
