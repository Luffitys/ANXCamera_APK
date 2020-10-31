.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process$MemStats;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemStats"
.end annotation


# static fields
.field public static final REPORT_TO:J = 0x10900000003L

.field public static final SIZE:J = 0x10900000002L

.field public static final UID:J = 0x10500000001L


# instance fields
.field final synthetic this$2:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process$MemStats;->this$2:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
