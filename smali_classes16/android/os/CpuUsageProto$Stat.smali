.class public final Landroid/os/CpuUsageProto$Stat;
.super Ljava/lang/Object;
.source "CpuUsageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuUsageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stat"
.end annotation


# static fields
.field public static final ADDED:J = 0x10800000004L

.field public static final MAJOR_FAULTS:J = 0x1050000000aL

.field public static final MINOR_FAULTS:J = 0x10500000009L

.field public static final NAME:J = 0x10900000003L

.field public static final PARENT_PID:J = 0x1050000000bL

.field public static final PID:J = 0x10500000002L

.field public static final REMOVED:J = 0x10800000005L

.field public static final SYSTEM_TIME:J = 0x10500000008L

.field public static final UID:J = 0x10500000001L

.field public static final UPTIME:J = 0x10500000006L

.field public static final USER_TIME:J = 0x10500000007L


# instance fields
.field final synthetic this$0:Landroid/os/CpuUsageProto;


# direct methods
.method public constructor <init>(Landroid/os/CpuUsageProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/CpuUsageProto$Stat;->this$0:Landroid/os/CpuUsageProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
