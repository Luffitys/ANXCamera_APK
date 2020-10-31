.class public Lmiui/drm/DrmManager$TrialLimits;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrialLimits"
.end annotation


# instance fields
.field public endTime:J

.field public startTime:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/drm/DrmManager$TrialLimits;->startTime:J

    iput-wide p3, p0, Lmiui/drm/DrmManager$TrialLimits;->endTime:J

    return-void
.end method
