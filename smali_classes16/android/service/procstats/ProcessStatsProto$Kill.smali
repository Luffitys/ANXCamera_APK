.class public final Landroid/service/procstats/ProcessStatsProto$Kill;
.super Ljava/lang/Object;
.source "ProcessStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/procstats/ProcessStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Kill"
.end annotation


# static fields
.field public static final CACHED:J = 0x10500000002L

.field public static final CACHED_PSS:J = 0x10b00000003L

.field public static final CPU:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Landroid/service/procstats/ProcessStatsProto;


# direct methods
.method public constructor <init>(Landroid/service/procstats/ProcessStatsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/procstats/ProcessStatsProto$Kill;->this$0:Landroid/service/procstats/ProcessStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
