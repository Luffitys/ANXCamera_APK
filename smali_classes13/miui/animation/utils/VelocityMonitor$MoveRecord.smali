.class Lmiui/animation/utils/VelocityMonitor$MoveRecord;
.super Ljava/lang/Object;
.source "VelocityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/utils/VelocityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveRecord"
.end annotation


# instance fields
.field timeStamp:J

.field values:[D


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/utils/VelocityMonitor$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/animation/utils/VelocityMonitor$MoveRecord;-><init>()V

    return-void
.end method
