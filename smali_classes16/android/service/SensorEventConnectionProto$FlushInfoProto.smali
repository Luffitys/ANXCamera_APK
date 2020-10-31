.class public final Landroid/service/SensorEventConnectionProto$FlushInfoProto;
.super Ljava/lang/Object;
.source "SensorEventConnectionProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorEventConnectionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlushInfoProto"
.end annotation


# static fields
.field public static final FIRST_FLUSH_PENDING:J = 0x10800000003L

.field public static final PENDING_FLUSH_EVENTS_TO_SEND:J = 0x10500000004L

.field public static final SENSOR_HANDLE:J = 0x10500000002L

.field public static final SENSOR_NAME:J = 0x10900000001L


# instance fields
.field final synthetic this$0:Landroid/service/SensorEventConnectionProto;


# direct methods
.method public constructor <init>(Landroid/service/SensorEventConnectionProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/SensorEventConnectionProto$FlushInfoProto;->this$0:Landroid/service/SensorEventConnectionProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
