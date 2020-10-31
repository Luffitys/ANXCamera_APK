.class public final Landroid/os/strictmode/IntentReceiverLeakedViolation;
.super Landroid/os/strictmode/Violation;
.source "IntentReceiverLeakedViolation.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/strictmode/IntentReceiverLeakedViolation;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method
