.class public final Landroid/service/SensorListProto;
.super Ljava/lang/Object;
.source "SensorListProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/SensorListProto$SensorProto;
    }
.end annotation


# static fields
.field public static final RM_CONTINUOUS:I = 0x1

.field public static final RM_ONE_SHOT:I = 0x3

.field public static final RM_ON_CHANGE:I = 0x2

.field public static final RM_SPECIAL_TRIGGER:I = 0x4

.field public static final RM_UNKNOWN:I = 0x0

.field public static final SENSORS:J = 0x20b00000001L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
