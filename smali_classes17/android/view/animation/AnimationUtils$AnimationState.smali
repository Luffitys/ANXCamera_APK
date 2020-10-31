.class Landroid/view/animation/AnimationUtils$AnimationState;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationState"
.end annotation


# instance fields
.field animationClockLocked:Z

.field currentVsyncTimeMillis:J

.field lastReportedTimeMillis:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/AnimationUtils$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/animation/AnimationUtils$AnimationState;-><init>()V

    return-void
.end method
