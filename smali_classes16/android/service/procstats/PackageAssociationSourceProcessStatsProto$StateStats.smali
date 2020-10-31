.class public final Landroid/service/procstats/PackageAssociationSourceProcessStatsProto$StateStats;
.super Ljava/lang/Object;
.source "PackageAssociationSourceProcessStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateStats"
.end annotation


# static fields
.field public static final DURATION_MS:J = 0x10300000002L

.field public static final PROCESS_STATE:J = 0x10e00000001L

.field public static final REALTIME_DURATION_MS:J = 0x10300000003L


# instance fields
.field final synthetic this$0:Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;


# direct methods
.method public constructor <init>(Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/procstats/PackageAssociationSourceProcessStatsProto$StateStats;->this$0:Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
