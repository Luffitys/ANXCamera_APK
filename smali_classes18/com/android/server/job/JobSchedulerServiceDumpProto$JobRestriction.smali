.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$JobRestriction;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobRestriction"
.end annotation


# static fields
.field public static final IS_RESTRICTING:J = 0x10800000002L

.field public static final REASON:J = 0x10e00000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerServiceDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerServiceDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerServiceDumpProto$JobRestriction;->this$0:Lcom/android/server/job/JobSchedulerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
