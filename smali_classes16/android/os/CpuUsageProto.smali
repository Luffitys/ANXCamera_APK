.class public final Landroid/os/CpuUsageProto;
.super Ljava/lang/Object;
.source "CpuUsageProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CpuUsageProto$Stat;,
        Landroid/os/CpuUsageProto$Load;
    }
.end annotation


# static fields
.field public static final CURRENT_LOAD:J = 0x10b00000001L

.field public static final CURRENT_SAMPLE_REAL_TIME:J = 0x10300000006L

.field public static final CURRENT_SAMPLE_TIME:J = 0x10300000004L

.field public static final CURRENT_SAMPLE_WALL_TIME:J = 0x10300000008L

.field public static final LAST_SAMPLE_REAL_TIME:J = 0x10300000005L

.field public static final LAST_SAMPLE_TIME:J = 0x10300000003L

.field public static final LAST_SAMPLE_WALL_TIME:J = 0x10300000007L

.field public static final NOW:J = 0x10300000002L

.field public static final PROCESSES:J = 0x20b00000010L

.field public static final TOTAL_IDLE_TIME:J = 0x1050000000eL

.field public static final TOTAL_IOWAIT_TIME:J = 0x1050000000bL

.field public static final TOTAL_IRQ_TIME:J = 0x1050000000cL

.field public static final TOTAL_SOFT_IRQ_TIME:J = 0x1050000000dL

.field public static final TOTAL_SYSTEM_TIME:J = 0x1050000000aL

.field public static final TOTAL_TIME:J = 0x1050000000fL

.field public static final TOTAL_USER_TIME:J = 0x10500000009L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
