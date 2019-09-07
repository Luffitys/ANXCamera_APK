.class public Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;
.super Ljava/lang/Object;
.source "SlowMotionVideoConfiguration.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarshalQueryableSlowMotionVideoConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;-><init>(Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$1;)V

    return-object v6
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;",
            ">;I)Z"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const-class p2, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
