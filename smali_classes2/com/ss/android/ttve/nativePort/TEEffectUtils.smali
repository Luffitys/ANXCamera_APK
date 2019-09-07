.class public Lcom/ss/android/ttve/nativePort/TEEffectUtils;
.super Ljava/lang/Object;
.source "TEEffectUtils.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getEffectVersion()Ljava/lang/String;
.end method

.method public static getQREncodedData(Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-static {p0, v0, p2}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->nativeGetQREncodedData(Ljava/lang/String;[ILcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I

    move-result p0

    return p0
.end method

.method private static native nativeGetQREncodedData(Ljava/lang/String;[ILcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I
.end method
