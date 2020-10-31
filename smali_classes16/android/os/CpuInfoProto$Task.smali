.class public final Landroid/os/CpuInfoProto$Task;
.super Ljava/lang/Object;
.source "CpuInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Task"
.end annotation


# static fields
.field public static final CMD:J = 0x1090000000bL

.field public static final CPU:J = 0x10200000006L

.field public static final NAME:J = 0x1090000000cL

.field public static final NI:J = 0x11100000005L

.field public static final PCY:J = 0x10e0000000aL

.field public static final PID:J = 0x10500000001L

.field public static final POLICY_BG:I = 0x2

.field public static final POLICY_FG:I = 0x1

.field public static final POLICY_TA:I = 0x3

.field public static final POLICY_UNKNOWN:I = 0x0

.field public static final PR:J = 0x10900000004L

.field public static final RES:J = 0x10900000009L

.field public static final S:J = 0x10e00000007L

.field public static final STATUS_D:I = 0x1

.field public static final STATUS_R:I = 0x2

.field public static final STATUS_S:I = 0x3

.field public static final STATUS_T:I = 0x4

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final STATUS_Z:I = 0x5

.field public static final TID:J = 0x10500000002L

.field public static final USER:J = 0x10900000003L

.field public static final VIRT:J = 0x10900000008L


# instance fields
.field final synthetic this$0:Landroid/os/CpuInfoProto;


# direct methods
.method public constructor <init>(Landroid/os/CpuInfoProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/CpuInfoProto$Task;->this$0:Landroid/os/CpuInfoProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
