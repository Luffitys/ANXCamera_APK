.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob$RunningJob;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RunningJob"
.end annotation


# static fields
.field public static final DUMP:J = 0x10b00000004L

.field public static final EVALUATED_PRIORITY:J = 0x11100000005L

.field public static final INFO:J = 0x10b00000001L

.field public static final PENDING_DURATION_MS:J = 0x10300000007L

.field public static final RUNNING_DURATION_MS:J = 0x10300000002L

.field public static final TIME_SINCE_MADE_ACTIVE_MS:J = 0x10300000006L

.field public static final TIME_UNTIL_TIMEOUT_MS:J = 0x10300000003L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob$RunningJob;->this$1:Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
