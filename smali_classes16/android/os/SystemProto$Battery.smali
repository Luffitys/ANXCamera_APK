.class public final Landroid/os/SystemProto$Battery;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Battery"
.end annotation


# static fields
.field public static final BATTERY_REALTIME_MS:J = 0x10300000005L

.field public static final BATTERY_UPTIME_MS:J = 0x10300000006L

.field public static final ESTIMATED_BATTERY_CAPACITY_MAH:J = 0x1030000000aL

.field public static final MAX_LEARNED_BATTERY_CAPACITY_UAH:J = 0x1030000000cL

.field public static final MIN_LEARNED_BATTERY_CAPACITY_UAH:J = 0x1030000000bL

.field public static final SCREEN_DOZE_DURATION_MS:J = 0x10300000009L

.field public static final SCREEN_OFF_REALTIME_MS:J = 0x10300000007L

.field public static final SCREEN_OFF_UPTIME_MS:J = 0x10300000008L

.field public static final START_CLOCK_TIME_MS:J = 0x10300000001L

.field public static final START_COUNT:J = 0x10300000002L

.field public static final TOTAL_REALTIME_MS:J = 0x10300000003L

.field public static final TOTAL_UPTIME_MS:J = 0x10300000004L


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$Battery;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
