.class public Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# static fields
.field private static final SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1

    new-instance v0, Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl$MarshalerAWBFrameControl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl$MarshalerAWBFrameControl;-><init>(Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 0

    if-nez p2, :cond_0

    const-class p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
