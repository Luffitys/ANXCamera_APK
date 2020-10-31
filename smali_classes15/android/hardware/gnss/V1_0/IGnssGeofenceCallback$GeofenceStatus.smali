.class public final Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback$GeofenceStatus;
.super Ljava/lang/Object;
.source "IGnssGeofenceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeofenceStatus"
.end annotation


# static fields
.field public static final ERROR_GENERIC:I = -0x95

.field public static final ERROR_ID_EXISTS:I = -0x65

.field public static final ERROR_ID_UNKNOWN:I = -0x66

.field public static final ERROR_INVALID_TRANSITION:I = -0x67

.field public static final ERROR_TOO_MANY_GEOFENCES:I = -0x64

.field public static final OPERATION_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "OPERATION_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, -0x64

    const/16 v3, -0x64

    if-ne v2, v3, :cond_18

    const-string v2, "ERROR_TOO_MANY_GEOFENCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x64

    :cond_18
    and-int/lit8 v2, p0, -0x65

    const/16 v3, -0x65

    if-ne v2, v3, :cond_25

    const-string v2, "ERROR_ID_EXISTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x65

    :cond_25
    and-int/lit8 v2, p0, -0x66

    const/16 v3, -0x66

    if-ne v2, v3, :cond_32

    const-string v2, "ERROR_ID_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x66

    :cond_32
    and-int/lit8 v2, p0, -0x67

    const/16 v3, -0x67

    if-ne v2, v3, :cond_3f

    const-string v2, "ERROR_INVALID_TRANSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x67

    :cond_3f
    and-int/lit16 v2, p0, -0x95

    const/16 v3, -0x95

    if-ne v2, v3, :cond_4c

    const-string v2, "ERROR_GENERIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, -0x95

    :cond_4c
    if-eq p0, v1, :cond_68

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, "OPERATION_SUCCESS"

    return-object v0

    :cond_5
    const/16 v0, -0x64

    if-ne p0, v0, :cond_c

    const-string v0, "ERROR_TOO_MANY_GEOFENCES"

    return-object v0

    :cond_c
    const/16 v0, -0x65

    if-ne p0, v0, :cond_13

    const-string v0, "ERROR_ID_EXISTS"

    return-object v0

    :cond_13
    const/16 v0, -0x66

    if-ne p0, v0, :cond_1a

    const-string v0, "ERROR_ID_UNKNOWN"

    return-object v0

    :cond_1a
    const/16 v0, -0x67

    if-ne p0, v0, :cond_21

    const-string v0, "ERROR_INVALID_TRANSITION"

    return-object v0

    :cond_21
    const/16 v0, -0x95

    if-ne p0, v0, :cond_28

    const-string v0, "ERROR_GENERIC"

    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
