.class public Lorg/chromium/arc/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final ARC_SYSTEM_EVENT:I = 0x493e0


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeArcSystemEvent(Ljava/lang/String;)V
    .registers 2

    const v0, 0x493e0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method
