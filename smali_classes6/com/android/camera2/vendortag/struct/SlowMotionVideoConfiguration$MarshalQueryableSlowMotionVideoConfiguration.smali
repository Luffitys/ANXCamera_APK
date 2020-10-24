.class public Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 7

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
