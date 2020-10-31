.class public final Landroid/service/SensorEventsProto$Event;
.super Ljava/lang/Object;
.source "SensorEventsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorEventsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final FLOAT_ARRAY:J = 0x20200000005L

.field public static final INT64_DATA:J = 0x10300000004L

.field public static final MASKED:J = 0x10800000003L

.field public static final TIMESTAMP_SEC:J = 0x10200000001L

.field public static final WALL_TIMESTAMP_MS:J = 0x10300000002L


# instance fields
.field final synthetic this$0:Landroid/service/SensorEventsProto;


# direct methods
.method public constructor <init>(Landroid/service/SensorEventsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/SensorEventsProto$Event;->this$0:Landroid/service/SensorEventsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
