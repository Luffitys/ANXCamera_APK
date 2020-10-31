.class public final Landroid/os/PsProto$Process;
.super Ljava/lang/Object;
.source "PsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation


# static fields
.field public static final ADDR:J = 0x10900000009L

.field public static final CMD:J = 0x10900000011L

.field public static final LABEL:J = 0x10900000001L

.field public static final NI:J = 0x1110000000cL

.field public static final PCY:J = 0x10e0000000fL

.field public static final PID:J = 0x10500000003L

.field public static final POLICY_BG:I = 0x2

.field public static final POLICY_FG:I = 0x1

.field public static final POLICY_TA:I = 0x3

.field public static final POLICY_UNKNOWN:I = 0x0

.field public static final PPID:J = 0x10500000005L

.field public static final PRI:J = 0x1050000000bL

.field public static final RSS:J = 0x10500000007L

.field public static final RTPRIO:J = 0x1090000000dL

.field public static final S:J = 0x10e0000000aL

.field public static final SCH:J = 0x10e0000000eL

.field public static final SCH_BATCH:I = 0x3

.field public static final SCH_FIFO:I = 0x1

.field public static final SCH_IDLE:I = 0x5

.field public static final SCH_ISO:I = 0x4

.field public static final SCH_NORMAL:I = 0x0

.field public static final SCH_OTHER:I = 0x0

.field public static final SCH_RR:I = 0x2

.field public static final STATE_D:I = 0x1

.field public static final STATE_R:I = 0x2

.field public static final STATE_S:I = 0x3

.field public static final STATE_T:I = 0x4

.field public static final STATE_TRACING:I = 0x5

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_X:I = 0x6

.field public static final STATE_Z:I = 0x7

.field public static final TID:J = 0x10500000004L

.field public static final TIME:J = 0x10900000010L

.field public static final USER:J = 0x10900000002L

.field public static final VSZ:J = 0x10500000006L

.field public static final WCHAN:J = 0x10900000008L


# instance fields
.field final synthetic this$0:Landroid/os/PsProto;


# direct methods
.method public constructor <init>(Landroid/os/PsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/PsProto$Process;->this$0:Landroid/os/PsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
