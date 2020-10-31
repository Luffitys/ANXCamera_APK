.class public final Landroid/os/strictmode/UntaggedSocketViolation;
.super Landroid/os/strictmode/Violation;
.source "UntaggedSocketViolation.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Untagged socket detected; use TrafficStats.setThreadSocketTag() to track all network usage"

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    return-void
.end method
