.class public final Landroid/service/SensorListProto$SensorProto;
.super Ljava/lang/Object;
.source "SensorListProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SensorProto"
.end annotation


# static fields
.field public static final ASHMEM:J = 0x10800000013L

.field public static final DATA_INJECTION_SUPPORTED:J = 0x1080000000fL

.field public static final FIFO_MAX_EVENT_COUNT:J = 0x1050000000cL

.field public static final FIFO_RESERVED_EVENT_COUNT:J = 0x1050000000dL

.field public static final FLAGS:J = 0x10500000008L

.field public static final GRALLOC:J = 0x10800000014L

.field public static final HANDLE:J = 0x10500000001L

.field public static final HAS_ADDITIONAL_INFO:J = 0x10800000011L

.field public static final HIGHEST_RATE_LEVEL:J = 0x10500000012L

.field public static final IS_DYNAMIC:J = 0x10800000010L

.field public static final IS_WAKEUP:J = 0x1080000000eL

.field public static final MAX_DELAY_US:J = 0x1050000000aL

.field public static final MAX_VALUE:J = 0x10200000016L

.field public static final MIN_DELAY_US:J = 0x1050000000bL

.field public static final MIN_VALUE:J = 0x10200000015L

.field public static final NAME:J = 0x10900000002L

.field public static final POWER_USAGE:J = 0x10200000018L

.field public static final REPORTING_MODE:J = 0x10e00000009L

.field public static final REQUIRED_PERMISSION:J = 0x10900000007L

.field public static final RESOLUTION:J = 0x10200000017L

.field public static final STRING_TYPE:J = 0x10900000005L

.field public static final TYPE:J = 0x10500000006L

.field public static final VENDOR:J = 0x10900000003L

.field public static final VERSION:J = 0x10500000004L


# instance fields
.field final synthetic this$0:Landroid/service/SensorListProto;


# direct methods
.method public constructor <init>(Landroid/service/SensorListProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/SensorListProto$SensorProto;->this$0:Landroid/service/SensorListProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
