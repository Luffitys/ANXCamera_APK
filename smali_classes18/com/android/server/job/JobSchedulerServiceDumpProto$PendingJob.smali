.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$PendingJob;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PendingJob"
.end annotation


# static fields
.field public static final DUMP:J = 0x10b00000002L

.field public static final EVALUATED_PRIORITY:J = 0x11100000003L

.field public static final INFO:J = 0x10b00000001L

.field public static final PENDING_DURATION_MS:J = 0x10300000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerServiceDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerServiceDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerServiceDumpProto$PendingJob;->this$0:Lcom/android/server/job/JobSchedulerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
