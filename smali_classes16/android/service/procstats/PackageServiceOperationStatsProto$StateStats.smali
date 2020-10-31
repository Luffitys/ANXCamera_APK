.class public final Landroid/service/procstats/PackageServiceOperationStatsProto$StateStats;
.super Ljava/lang/Object;
.source "PackageServiceOperationStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/procstats/PackageServiceOperationStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateStats"
.end annotation


# static fields
.field public static final DURATION_MS:J = 0x10300000003L

.field public static final MEMORY_STATE:J = 0x10e00000002L

.field public static final REALTIME_DURATION_MS:J = 0x10300000004L

.field public static final SCREEN_STATE:J = 0x10e00000001L


# instance fields
.field final synthetic this$0:Landroid/service/procstats/PackageServiceOperationStatsProto;


# direct methods
.method public constructor <init>(Landroid/service/procstats/PackageServiceOperationStatsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/procstats/PackageServiceOperationStatsProto$StateStats;->this$0:Landroid/service/procstats/PackageServiceOperationStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
