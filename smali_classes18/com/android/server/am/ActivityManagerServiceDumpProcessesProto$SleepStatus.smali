.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$SleepStatus;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SleepStatus"
.end annotation


# static fields
.field public static final SHUTTING_DOWN:J = 0x10800000004L

.field public static final SLEEPING:J = 0x10800000003L

.field public static final SLEEP_TOKENS:J = 0x20900000002L

.field public static final TEST_PSS_MODE:J = 0x10800000005L

.field public static final WAKEFULNESS:J = 0x10e00000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$SleepStatus;->this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
