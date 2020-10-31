.class public final Landroid/os/CpuInfoProto$TaskStats;
.super Ljava/lang/Object;
.source "CpuInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskStats"
.end annotation


# static fields
.field public static final RUNNING:J = 0x10500000002L

.field public static final SLEEPING:J = 0x10500000003L

.field public static final STOPPED:J = 0x10500000004L

.field public static final TOTAL:J = 0x10500000001L

.field public static final ZOMBIE:J = 0x10500000005L


# instance fields
.field final synthetic this$0:Landroid/os/CpuInfoProto;


# direct methods
.method public constructor <init>(Landroid/os/CpuInfoProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/CpuInfoProto$TaskStats;->this$0:Landroid/os/CpuInfoProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
