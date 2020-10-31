.class public final Landroid/service/SensorEventsProto$RecentEventsLog;
.super Ljava/lang/Object;
.source "SensorEventsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorEventsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecentEventsLog"
.end annotation


# static fields
.field public static final EVENTS:J = 0x20b00000003L

.field public static final NAME:J = 0x10900000001L

.field public static final RECENT_EVENTS_COUNT:J = 0x10500000002L


# instance fields
.field final synthetic this$0:Landroid/service/SensorEventsProto;


# direct methods
.method public constructor <init>(Landroid/service/SensorEventsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/SensorEventsProto$RecentEventsLog;->this$0:Landroid/service/SensorEventsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
