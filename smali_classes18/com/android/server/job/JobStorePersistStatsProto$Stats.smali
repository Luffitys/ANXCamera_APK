.class public final Lcom/android/server/job/JobStorePersistStatsProto$Stats;
.super Ljava/lang/Object;
.source "JobStorePersistStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStorePersistStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stats"
.end annotation


# static fields
.field public static final NUM_SYSTEM_SERVER_JOBS:J = 0x10500000002L

.field public static final NUM_SYSTEM_SYNC_MANAGER_JOBS:J = 0x10500000003L

.field public static final NUM_TOTAL_JOBS:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStorePersistStatsProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStorePersistStatsProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobStorePersistStatsProto$Stats;->this$0:Lcom/android/server/job/JobStorePersistStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
