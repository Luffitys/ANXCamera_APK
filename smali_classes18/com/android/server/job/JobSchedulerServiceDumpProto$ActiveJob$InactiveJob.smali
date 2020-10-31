.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob$InactiveJob;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InactiveJob"
.end annotation


# static fields
.field public static final STOPPED_REASON:J = 0x10900000002L

.field public static final TIME_SINCE_STOPPED_MS:J = 0x10300000001L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob$InactiveJob;->this$1:Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
