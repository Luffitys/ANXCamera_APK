.class public Lcom/android/internal/logging/UiEventLoggerImpl;
.super Ljava/lang/Object;
.source "UiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .registers 6

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_b

    const/16 v1, 0x5a

    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .registers 8

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_12

    if-eqz p4, :cond_12

    const/16 v1, 0x5a

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v2

    invoke-static {v1, v0, p2, p3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :goto_15
    return-void
.end method

.method public logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .registers 9

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_12

    if-eqz p4, :cond_12

    const/16 v1, 0x104

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v2

    invoke-static {v1, v0, p3, v2, p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;II)V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :goto_15
    return-void
.end method

.method public logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .registers 8

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_c

    const/16 v1, 0x104

    const/4 v2, 0x0

    invoke-static {v1, v0, p3, v2, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;II)V

    :cond_c
    return-void
.end method
